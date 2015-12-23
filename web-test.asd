(in-package :cl-user)
(defpackage web-test-asd
  (:use :cl :asdf))
(in-package :web-test-asd)

(defsystem web-test
  :author ""
  :license ""
  :depends-on (:web
               :prove)
  :components ((:module "t"
                :components
                ((:file "web"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
