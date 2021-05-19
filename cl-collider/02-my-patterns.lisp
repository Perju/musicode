(ql:quickload :jp-musicode)
(in-package :jp-musicode)

(defun start-app ()
  (collider-patterns-start)
  (load-synths)
  (start-clock-loop :tempo 110/60))
(defun stop-app ()
  (collider-patterns-stop))

(start-app)
(stop-app)

(pb :foo
  :instrument :drum
  :quant 4
  :dur 1
  :pfin 4)
(play :foo)
(end :foo)

(pb :foot
  :embed (pcycles "o-----x-o-------")
  :instrument :drum
  :dur 1/4
  :quant 4)
(play :foot)
(end :foot)

(pb :snare
  :embed (pcycles "----o-------o---")
  :instrument :snare
  :dur 1/4
  :quant 4)
(play :snare)
(end :snare)

(pb :12-bar-blues
  :instrument :saw
  :scale :chromatic
  :root 4
  :octave 4
  :dur (pseq (list 2/3 1/3))
  :amp (pseq (list 0.5 0.4))
  :legato (pseq (list 0.7 0.2))
  :degree (pr (pseq (list (pseq '((0 7) (0 9)) 8)
                          (pseq '((5 12) (5 14)) 4)
                          (pseq '((0 7) (0 9)) 4)

                          (pseq '((7 14) (7 16)) 2)
                          (pseq '((5 12) (5 14)) 2)
                          (pseq '((0 7) (0 9)) 2)
                          (pseq '((7 14) (7 16)) 2))
                    1)
              2))
(play :12-bar-blues)
(end :12-bar-blues)

(all-patterns)





