(ql:quickload :cl-collider)

(in-package :sc-user)
(named-readtables:in-readtable :sc)

(setf *s* (make-external-server "localhost" :port 48800))
(server-boot *s*)

(jack-connect)

(defvar *synth*)
(setf *synth* (play (sin-osc.ar [320 321] 0 .2)))

(free *synth*)

(server-quit *s*)
