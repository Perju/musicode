(ql:quickload :jp-musicode)

(in-package :jp-musicode)
(named-readtables:in-readtable :sc)

;; (setf *s* (make-external-server "localhost" :port 48800))
;; (server-boot *s*)

;; (jack-connect)
(collider-start)

(defvar *synth*)
(setf *synth* (cl-collider:play (sin-osc.ar [320 321] 0 .2)))
(cl-patterns:play)

(free *synth*)

(collider-stop)
