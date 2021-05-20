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

;; No se incluyen los samples
(buffer-read "boom.wav" :bufnum 0)
(buffer-read "chis.wav" :bufnum 1)
(buffer-read "clap.wav" :bufnum 2)

(pb :boom
    :instrument :sample :buffer 0
    :embed (pcycles "o-------o-o-----")
    :amp 1 :quant 4 :dur 1/4)
(play :boom)
(end :boom)

(pb :chis
    :instrument :sample :buffer 1
    :embed (pcycles "o-o-o-o-o-o-o-o-")
    :amp 0.02 :quant 4 :dur 1/4)
(play :chis)
(end :chis)

(pb :clap
    :instrument :sample :buffer 2
    :embed (pcycles "----o-------o---")
    :amp 0.5 :quant 4 :dur 1/4)
(play :clap)
(end :clap)

(pb :12-bar-blues
  :instrument :saw
  :scale :major
  :root 4
  :octave 4
  :dur (pseq (list 2/3 1/3))
  :amp (pseq (list 0.7 0.4))
  :legato (pseq (list 0.7 0.2))
  :degree (pr (pseq (list (pseq '((0 4) (0 5)) 8)
                          (pseq '((3 7) (3 8)) 4)
                          (pseq '((0 4) (0 5)) 4)

                          (pseq '((4 8) (4 9)) 2)
                          (pseq '((0 4) (0 5)) 2)
                          (pseq '((3 7) (3 8)) 2)
                          (pseq '((4 8) (4 9)) 2))
                    1)
              2))
(play :12-bar-blues)
(end :12-bar-blues)

(play (list :boom :chis :clap :12-bar-blues))
(end (list :boom :chis :clap :12-bar-blues))
