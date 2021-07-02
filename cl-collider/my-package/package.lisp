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
