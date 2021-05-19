(in-package :jp-musicode)

(named-readtables:in-readtable :sc)

(defun load-synths ()
  (defsynth sine-wave ((note 60) (dur 4.0))
    (let* ((env (env-gen.kr (env [0 .2 0] [(* dur .2) (* dur .8)]) :act :free))
           (freq (midicps note))
           (sig (sin-osc.ar [freq (+ freq 2)] 0 env)))
      (out.ar 0 sig)))

  (defsynth saw ((note 60) (dur 4.0) (octave 0) (root 0))
    (let* ((env (env-gen.kr (env [0 .2 0] [(* dur .2) (* dur .8)]) :act :free))
           (freq (midicps (+ note root (* octave 12))))
           (sig (lpf.ar (saw.ar freq env) (* freq 2))))
      (out.ar 0 [sig sig])))

  (defsynth drum ((freq 3000))
    (let* ((env (env-gen.ar (perc 0.001 0.1) :act :free))
           (sig (lpf.ar (white-noise.ar) (* freq env))))
      (out.ar 0 (pan2.ar sig 0 0.4))))

  (defsynth snare ((freq 17000))
    (let* ((env (env-gen.ar (perc 0.001 0.05) :act :free))
           (sig (lpf.ar (white-noise.ar) (* freq env))))
      (out.ar 0 (pan2.ar sig 0 0.2))))
  )


