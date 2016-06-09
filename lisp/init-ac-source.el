(require-package 'auto-complete-clang)
(require 'auto-complete-clang )
(setq ac-clang-flags
      (mapcar (lambda (item) (concat "-I" item))
              (split-string
               "
 D:/win-builds/include
 d:\win-builds\bin\../lib64/gcc/x86_64-w64-mingw32/4.8.3/../../../../include/c++/4.8.3
 d:\win-builds\bin\../lib64/gcc/x86_64-w64-mingw32/4.8.3/../../../../include/c++/4.8.3/x86_64-w64-mingw32
 d:\win-builds\bin\../lib64/gcc/x86_64-w64-mingw32/4.8.3/../../../../include/c++/4.8.3/backward
 d:\win-builds\bin\../lib64/gcc/x86_64-w64-mingw32/4.8.3/include
 d:\win-builds\bin\../lib64/gcc/x86_64-w64-mingw32/4.8.3/include-fixed
 d:\win-builds\bin\../lib64/gcc/x86_64-w64-mingw32/4.8.3/../../../../x86_64-w64-mingw32/include

"
               )))

(provide 'init-ac-source)
