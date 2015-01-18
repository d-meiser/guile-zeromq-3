#!/usr/bin/guile \
--debug -e main -s
!#

(use-modules (zmq)
             (rnrs bytevectors))

(define (main args)
  (let* ((context (zmq-init))
         (sock (zmq-socket context ZMQ_REP)))
    (zmq-bind sock "tcp://*:5555")
    (let loop ()
      (let ((recvd (zmq-recv sock)))
        (display (format #f "Received: ~s\n" (utf8->string recvd)))
        (sleep 1)
        (zmq-send sock (string->utf8 "World")))
      (loop))))
