(defpackage :jp-musicode
  (:use #:cl #:sc #:cl-patterns)
           ;; start stop functions
  (:export #:collider-start
           #:collider-stop

           ;; synthesizers
           ;; #:sine-wave #:saw #:drum
           #:load-synths

           ;; sequencers
           #:sequencer-testing)
  (:shadowing-import-from :cl-patterns
   :play :end :dur :quant :freq :stop))

(in-package :jp-musicode)
(named-readtables:in-readtable :sc)

(defun collider-start ()
  (cl-patterns:start-backend :supercollider)
  (when (not (uiop/os:os-windows-p))
    (jack-connect)))

(defun collider-stop ()
  (cl-patterns:stop-backend :supercollider))
