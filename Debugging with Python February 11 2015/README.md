Debugging in Python - Office Hours Agenda

[Link to office hours](https://plus.google.com/u/0/events/ch268rqdktqap2nmscimptpruv8?authkey=COe44vLPzoehaA)

**_What is debugging?_ **

- Observing the state of your program near bugs so you know what's going on
- Finding where your code diverges from your mental model
- **_How do we avoid bugs in the first place?_**
- Write small pieces of functionality and test often.
- **_Debugging Tools_:**

- Simple Techniques
    - print statements
    - asserts
    - console reading

- ipython + pdb
    - Brief overview of what ipython is
    - How to start debugger: %run -d filename
    - Commands
        - h (help)
            - h (command name)

        - s(tep)
            - advance one line

        - pp
            - pretty print an expression

        - b(reak)
            - You can give it a line number or a function name
            - No arguments lists the breakpoints

        - a(rgs)
            - show the args of the current function

        - c(ont(inue))
            - Keep running until the next breakpoint (or the program ends)

        - cl(ear)
            - clears a breakpoint, given a bp number

        - l(ist)
            - Show the lines of code around the current one

    - Learn more at:
        - The [pdb documentation](https://docs.python.org/2/library/pdb.html)
        - The [ipython debugging documentation](http://ipython.org/ipython-doc/1/interactive/tutorial.html#debugging)
