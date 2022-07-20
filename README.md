# nuitka-nogil-testing

Testing [nuitka](https://github.com/Nuitka/Nuitka) stand-alone executable builds on [nogil](https://github.com/colesbury/nogil) (Python Multithreading without GIL)

Status: Build Errors (see [build runs](https://github.com/jimkring/nuitka-nogil-testing/actions))

```shellsession
Nuitka-Scons:INFO: Backend C compiler: gcc (gcc).
In file included from /usr/local/lib/python3.9/site-packages/nuitka/build/include/nuitka/helpers.h:89,
                 from /usr/local/lib/python3.9/site-packages/nuitka/build/include/nuitka/prelude.h:504,
                 from __constants.c:2:
/usr/local/lib/python3.9/site-packages/nuitka/build/include/nuitka/exceptions.h: In function 'ERROR_OCCURRED':
/usr/local/lib/python3.9/site-packages/nuitka/build/include/nuitka/exceptions.h:25:29: error: 'struct _gilstate_runtime_state' has no member named 'tstate_current'
```
