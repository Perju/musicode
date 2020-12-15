(ql:quickload :jp-musicode)
(in-package :jp-musicode)
(collider-start)
(load-synths)

(start-clock-loop :tempo 110/60)

(pb :foo
  :instrument :drum
  :quant 4
  :dur 1
  :pfin 4)

(play :foo)
(end :foo)

(collider-stop)
