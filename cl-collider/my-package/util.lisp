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
