#!/usr/bin/guile \
--debug -e main -s
!#

(use-modules (zmq)
             (rnrs bytevectors))

(define (main args)
  (let* ((context (zmq-init))
         (sock (zmq-socket context ZMQ_REQ))
         (msg "Hello"))
    (zmq-connect sock "tcp://localhost:5555")
    (do ((i 1 (1+ i)))
        ((> i 5))
      (display (format #f "Sending ~s ~s\n" msg i))
      (zmq-send sock (string->utf8 msg))
      (display (format #f "Received: ~s\n" (utf8->string (zmq-recv sock)))))))
