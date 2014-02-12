DerelictAL
==========

A dynamic binding to OpenAL for the D Programming Language.

For information on how to build DerelictAL and link it with your programs, please see the post [Building and Using Packages in DerelictOrg][1] at the Derelict forums.

For information on how to load the OpenAL library via DerelictAL, see the page [DerelictUtil for Users][2] at the DerelictUtil Wiki. In the meantime, here's some sample code.

```D
import derelict.openal.al;

void main() {
    // Load the OpenAL library.
    DerelictAL.load();

    // Now OpenAL functions can be called.
    ...
}
```

[1] http://dblog.aldacron.net/forum/index.php?topic=841.0
[2] https://github.com/DerelictOrg/DerelictUtil/wiki/DerelictUtil-for-Users