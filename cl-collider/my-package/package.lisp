(defpackage :jp-musicode
  (:use #:cl #:sc)
           ;; start stop functions
  (:export #:collider-start
           #:collider-stop

           ;; synthesizers
           #:load-synths
           ;; #:sine-wave
           ;; #:saw
           ;; #:drum

           ;; sequencers
           #:sequencer-testing))

(in-package :jp-musicode)
(named-readtables:in-readtable :sc)

(defun collider-start ()
  (setf *s* (make-external-server "localhost" :port 48800))
  (server-boot *s*)
  (when (not (uiop/os:os-windows-p))
    (jack-connect)))

(defun collider-stop ()
  (server-quit *s*))
