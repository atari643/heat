# CMake generated Testfile for 
# Source directory: /mnt/netta/users/qartigala/Bureau/heat
# Build directory: /mnt/netta/users/qartigala/Bureau/heat/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(heat_seq_usage "./heat_seq")
set_tests_properties(heat_seq_usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage*" _BACKTRACE_TRIPLES "/mnt/netta/users/qartigala/Bureau/heat/CMakeLists.txt;78;add_test;/mnt/netta/users/qartigala/Bureau/heat/CMakeLists.txt;0;")
add_test(heat_seq_err_10 "./heat_seq" "10" "10" "1" "1" "1")
set_tests_properties(heat_seq_err_10 PROPERTIES  _BACKTRACE_TRIPLES "/mnt/netta/users/qartigala/Bureau/heat/CMakeLists.txt;80;add_test;/mnt/netta/users/qartigala/Bureau/heat/CMakeLists.txt;0;")
subdirs("lib")
