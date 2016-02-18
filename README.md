[![Build Status](https://travis-ci.org/d-meiser/guile-zeromq-3.svg?branch=master)](https://travis-ci.org/d-meiser/guile-zeromq-3)

[![Coverage Status](https://coveralls.io/repos/github/d-meiser/guile-zeromq-3/badge.svg?branch=master)](https://coveralls.io/github/d-meiser/guile-zeromq-3?branch=master)

About Guile-0MQ
===============

Guile-0MQ wraps the zmq sockets library for Guile Scheme.


Copying Guile-0MQ
=================

Distribution of Guile-0MQ is under the LGPLv3+. See the COPYING file for
more information.


Contact info
============

  Mailing List: guile-user@gnu.org
  Homepage:     ...
  Download:     ...


Build dependencies
==================

* Guile 2.0.0 or newer
  http://www.gnu.org/software/guile/
* ZeroMQ 2.1.0 or newer
  http://zmq.org/


Installation quickstart
=======================

Install using the standard autotools incantation:
  ./configure --prefix=/opt/guile-zmq && make && make install.

Do a ./autogen.sh first when building from from git.

You can run without installing, just run './env guile'.


Copying this file
=================

Copyright (C) 2011 Andy Wingo <wingo pobox.com>

Copying and distribution of this file, with or without modification, are
permitted in any medium without royalty provided the copyright notice
and this notice are preserved.
