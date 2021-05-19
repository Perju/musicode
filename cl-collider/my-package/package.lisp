(defpackage :jp-musicode
  (:use #:cl #:sc #:cl-patterns)
           ;; start stop functions
  (:export #:collider-start
           #:collider-stop
           #:collider-patterns-start
           #:collider-patterns-stop

           ;; synthesizers
           ;; #:sine-wave #:saw #:drum
           #:load-synths

           ;; sequencers
           #:sequencer-testing)
  (:shadowing-import-from :cl-patterns
   :play :end :dur :quant :freq :stop))

(in-package :jp-musicode)
(named-readtables:in-readtable :sc)

(defun collider-start()
  (setf *s* (make-external-server "localhost" :port 48800))
  (server-boot *s*)
  (when (not (uiop/os:os-windows-p))
    (jack-connect)))

(defun collider-stop()
  (server-quit *s*))

(defun collider-patterns-start ()
  (cl-patterns:start-backend :supercollider)
  (when (not (uiop/os:os-windows-p))
    (jack-connect)))

(defun collider-patterns-stop ()
  (cl-patterns:stop-backend :supercollider))
