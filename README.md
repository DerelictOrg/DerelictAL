DerelictAL
==========

A dynamic binding to OpenAL for the D Programming Language.

For information on how to build DerelictAL and link it with your programs, please see the post (Building and Using Packages in DerelictOrg)[http://dblog.aldacron.net/forum/index.php?topic=841.0] at the Derelict forums.

For information on how to load the OpenAL library via DerelictAL, see the page (DerelictUtil for Users)[https://github.com/DerelictOrg/DerelictUtil/wiki/DerelictUtil-for-Users] at the DerelictUtil Wiki. In the meantime, here's some sample code.

```D
import derelict.openal.al;

void main() {
    // Load the OpenAL library.
    DerelictAL.load();
    
    // Now OpenAL functions can be called.
    ...
}
```
