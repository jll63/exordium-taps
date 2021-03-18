(yorel-install-require 'smart-compile)

(setq smart-compile-alist
      (list*
       '("\\.cpp$" . "clang++ -g -std=c++11 -o %n %f && ./%n")
       '("_test\\.py\\'" . "pytest %F")
       '("test_.*\\.py\\'" . "pytest %F")
       '("\\.py\\'" . "python %f")
       smart-compile-alist))

(global-set-key [f12] 'smart-compile)
