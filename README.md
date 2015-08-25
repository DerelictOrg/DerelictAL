DerelictAL
==========

A dynamic binding to [OpenAL][1] for the D Programming Language.

Please see the pages [Building and Linking Derelict][2] and [Using Derelict][3], in the Derelict documentation, for information on how to build DerelictGLFW3 and load GLFW3 at run time. In the meantime, here's some sample code.

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
[2]: http://derelictorg.github.io/compiling.html
[3]: http://derelictorg.github.io/using.html