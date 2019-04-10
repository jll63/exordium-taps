(yorel-install-require 'smart-compile)

(setq smart-compile-alist
      (list*
       '("\\.cpp$" . "clang++ -g -std=c++11 -o %n %f && ./%n")
       '("\\.py\\'" . "python3.6 %f")
       smart-compile-alist))

(global-set-key [f12] 'smart-compile)
