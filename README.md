# Nuitka Testing on Python without GIL

The purpose of this project is to test [nuitka](https://github.com/Nuitka/Nuitka) binary module and stand-alone executable builds on [colesbury/nogil](https://github.com/colesbury/nogil), a proof-of-concept implementation of CPython that supports multithreading without the global interpreter lock (GIL).

[![Test Build (in a Docker)](https://github.com/jimkring/nuitka-nogil-testing/actions/workflows/docker-image.yml/badge.svg)](https://github.com/jimkring/nuitka-nogil-testing/actions/workflows/docker-image.yml)

Status: Build Errors (see [build runs](https://github.com/jimkring/nuitka-nogil-testing/actions))
