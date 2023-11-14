#!/bin/bash

#lcov --directory . --capture --output-file heat.lcov
#lcov_cobertura.py heat.lcov --output heat-coverage.xml
gcovr -r . -x -o heat-coverage.xml

export DEFINITIONS=""
export CPPCHECK_INCLUDES="-I. -Iinclude"
export SOURCES_TO_EXCLUDE="-ibuild/CMakeFiles/"
export SOURCES_TO_ANALYZE="."

run-clang-tidy -checks='*' -header-filter=. -p build -j5 > clang-tidy-report

cppcheck -v -f --language=c --platform=unix64 --enable=all --xml --xml-version=2 --suppress=missingIncludeSystem ${DEFINITIONS} ${CPPCHECK_INCLUDES} ${SOURCES_TO_EXCLUDE} ${SOURCES_TO_ANALYZE} 2> heat-cppcheck.xml

rats -w 3 --xml ${SOURCES_TO_ANALYZE} > heat-rats.xml

bash -c 'find ${SOURCES_TO_ANALYZE} -regex ".*\.c\|.*\.h" | vera++ - -showrules -nodup |& vera++Report2checkstyleReport.perl > heat-vera.xml'

valgrind --xml=yes --xml-file=heat-valgrind.xml --memcheck:leak-check=full --show-reachable=yes "./build/heat_seq" "10" "10" "200" "0" "0"
#mpirun "-np" "4" valgrind --xml=yes --xml-file=heat-valgrind.xml --memcheck:leak-check=full --show-reachable=yes --suppressions=/usr/share/openmpi/openmpi-valgrind.supp --suppressions=tools/heat-valgrind.supp "./build/heat_par" "10" "10" "200" "2" "2" "0"

# Create the config for sonar-scanner
cat > sonar-project.properties << EOF
sonar.links.homepage=https://gitlab-ce.iut.u-bordeaux.fr/lp-dagpi-devops/heat
sonar.links.scm=https://gitlab-ce.iut.u-bordeaux.fr/lp-dagpi-devops/heat.git
sonar.projectKey=heat
sonar.projectDescription=Solve the heat propagation equation
sonar.projectVersion=1.0
sonar.scm.disabled=false
sonar.scm.provider=git
sonar.sourceEncoding=UTF-8
sonar.sources=.
sonar.exclusions=build/CMakeFiles/**,cmake_modules/**,doc/**,formation/**,tools/**,**/*.html,**/*.xml,**/*.css,test_heat_plot.py
sonar.coverage.exclusions=Dockerfile,test_heat_plot.py
sonar.cxx.jsonCompilationDatabase=build/compile_commands.json
sonar.cxx.file.suffixes=.h,.c
sonar.cxx.errorRecoveryEnabled=true
sonar.cxx.gcc.encoding=UTF-8
sonar.cxx.gcc.regex=(?<file>.*):(?<line>[0-9]+):[0-9]+:\\\x20warning:\\\x20(?<message>.*)\\\x20\\\[(?<id>.*)\\\]
sonar.cxx.gcc.reportPaths=build/heat-build.log
sonar.cxx.clangsa.reportPaths=build/analyzer_reports/*/*.plist
sonar.cxx.clangtidy.reportPaths=build/clang-tidy-report
sonar.cxx.cobertura.reportPaths=heat-coverage.xml
sonar.cxx.cppcheck.reportPaths=heat-cppcheck.xml
sonar.cxx.rats.reportPaths=heat-rats.xml
sonar.cxx.valgrind.reportPaths=heat-valgrind.xml
sonar.cxx.xunit.reportPaths=heat-junit.xml
sonar.python.xunit.reportPath=plot_junit.xml
sonar.python.coverage.reportPaths=plot_coverage.xml
EOF
