;;;; jp-musicode

(asdf:defsystem #:jp-musicode
  :description "Paquete con algunos sintes y algunos sequenciadores"
  :author "JPérez"
  :license "MIT"
  :version "0.0.1"
  :serial t
  :depends-on (#:cl-collider #:named-readtables)
  :components ((:file "package")
               (:file "synths")
               (:file "sequencers")))
