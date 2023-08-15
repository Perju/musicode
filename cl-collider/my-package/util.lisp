(in-package :jp-musicode)

(named-readtables:in-readtable :sc)

(defun collider-start()
  ;; (setf *s* (make-external-server "localhost" :port 48800))
  ;; las propiedades del servidor se pueden ver en server-options.lisp
  (setf *s* (make-external-server "localhost"
                                  :server-options (make-server-options
                                                   :num-input-bus 2
                                                   :num-output-bus 2)
                                  :port 48801))
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
