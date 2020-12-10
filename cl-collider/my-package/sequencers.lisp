(in-package :jp-musicode)

(defun sequencer-testing ()
  (let ((syn (synth 'sine-wave :freq (midicps (+ 30 (random 40))))))
    (callback (+ (now) 0.7) #'release syn))
  (callback (+ (now) 1) #'sequencer-testing))
