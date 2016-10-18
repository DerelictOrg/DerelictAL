DerelictAL
==========

A dynamic binding to [OpenAL][1] for the D Programming Language.

Please see the [Derelict documentation][2] for information on how to build DerelictAL and load OpenAL at run time. In the meantime, here's some sample code.

```D
import derelict.openal.al;

void main() {
    // Load the OpenAL library.
    DerelictAL.load();

    // Now OpenAL functions can be called.
    ...
}
```

[1]: http://www.openal.org/
[2]: https://derelictorg.github.io/