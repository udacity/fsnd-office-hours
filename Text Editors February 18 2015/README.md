# Office Hours Summary 2/18: Text Editors

You can watch the office hours [here](https://plus.google.com/events/ce9quu8pbjjntf6p0n75a3fhf7o).

Find it in the repo [here](https://github.com/udacity/fsnd-office-hours).

There are a lot of text editors out there for developers to use. During office hours today, we went over Sublime Text, the editor we recommend for our Nanodegree program. We went over how to get started with Sublime Text and what types of plugins you'll want to look for to help you code.

The plugins that you'll definitely want to install are linters, which check your code for syntax errors and odditites, indent your file accordingly to format, reduce the time that you spend on menial tasks (such as converting tabs to spaces and vice versa, trimming trailing white spaces, etc.), or provide extra functionality (such as code completion or the ability to run your code inside the text editor).

We currently recommend Sublime Text 3 as the editor of choice due to how easy it is to use and because it has a lot of the plugins mentioned above by default.

## Sublime Text Editor

### How to get started with Sublime Text

If you do not already have Sublime Text downloaded and installed, you can find it [here](www.sublimetext.com/3). Click on the download link for your computer (Mac or Windows) and follow the directions to install.

### How to Install Packages for Sublime Text

Before we begin to install anything for Sublime, Jeff and I talked about [Package Control](https://packagecontrol.io/). Package Control will make your time with Sublime Text magical, and by magical I mean easy and simple.

Package Control is like the pip to Sublime Text. It makes it easy to search, find, install, update, and remove packages (plugins). To read a little more about package control, you can read this post [here](http://www.granneman.com/webdev/editors/sublime-text/packages/how-to-install-and-use-package-control/).

#### Installing Package Control

To install Package Control, go to https://packagecontrol.io/installation. From here you will see "Simple" and "Manual". We went over the directions for the Simple installation. You'll want to copy the text inside the gray box for the version of Sublime Text that you currently have. We recommend Sublime Text 3 since it is the most up to date version, but they also have instructions for Sublime Text 2 if that is the version you are currently using.

Once you have copied the text, go to Sublime Text, open the console by hitting control + tilda (for both Mac and Windows), and paste the code into the console. Hit enter, restart Sublime after it finishes installing, and now you're ready to install some linters.

#### Installing Python Linters

Some of you may be asking, what is a linter and why is it something I want to install? Linters will make your life a lot easier. Linters will help you catch syntax errors that may occur in your code by saying, this line is missing this or this is mispelled, this line is referring to something that doesn't exit, or you're missing a colon. Another example is for those who have programmed in JavaScript before, you'll know that a lot of times curly braces and semicolons can kick you in the butt sometimes. Linters can help you catch missing curly braces and semicolons, which makes it a lot easier to debug your code.

Once you've installed Package Control, you can go to Sublime Text and hit command + shift + p, which will open up a nifty menu. Type in "install" and click on the option "Package Control: Install Package". This will shift the menu to packages that you can download.

Install SublimeLinter to start as it will be your framework to support the various linters you'll eventually install. After you type in SublimeLinter, click on it, and it will install through Sublime Text.

A good idea is to read through the README file that it provides for you as it will provide extra instructions if there are additional steps, lead you to documentation online on how to use that particular package, or if there are other dependencies that are required ot run your package properly. If anyone was wondering why our rubrics require a README file, this is why we ask that you write one even if it seems self-explanatory.

In this case, the README file is telling us to go to the documentation online at http://www.sublimelinter.com to see how to completely install and use SublimeLinter. When we checked the documentation, we saw that there is a recommended approach on how to install via Package Control, and found that once you install it, you can go back to Sublime to download your linters.

Our first recommended linter for Python will be Flake8, which is great because it combines PEP8, the Python style guide, with a couple of additional features. Hit command + shift + p (control + shift + p in Windows), choose "Package Control: Install Package", and search for "sublimelinter-flake8". Hit enter once you find it, and it will install.

Once it installed, there was a github link for us to peruse, but we went ahead and tried to use our Flake8 linter. We first set the syntax of the page by hitting command + shift + p and choosing "Set Syntax: Python", which will then highlight the syntax in accordance to the programming language.

For our demonstration, we wrote some example code:

```python
def jeff_proc(a,b):
	print jeff
```

Our linter should be complaining because jeff currently refers to a variable, but no variable jeff has been declared and defined. This means that something went wrong when installing our linter.

When installing packages, be sure to read the text that shows after installation and to check out all the links that it provides. If you were watching the office hours, you may have noticed that there was a link to github. When you go to the link, it turns out that there are additional installation procedures.

In order to use the Flake8 linter, we need to have flake8 installed in our system. The github page provides the steps on how to do so using pip in the terminal. Once you finish this last step and go back to Sublime, you should see the linter working on the left hand side by the numbers.

In our example, we saw a yellow dot and a red dot to the left. Yellow dots mean that there is a stylistic issue, which is more of a cautionary it is preferred this is fixed, but it won't cause your code to break. If you see red dots, that means that it is something that must be fixed in order for your code to work. In this case, the yellow dot is present because there should be a space after the comma, and the red dot is present because no jeff variable exists.

```python
def jeff_proc(a, b):
	print 'jeff'
```

After we fixed our code, there were no dots present because our linter was happy.

#### Some Sublime Text Keyboard Shortcuts

As mentioned above, command + shift + p is a great shortcut that you can use. You can use it to set the syntax to the language you'd like and install packages, but you can also use it to convert indentations to spaces or vice versa, use it to convert things to uppercase or lowercase, etc. There are a lot of different shortcuts present when you hit command + shift + p, and when you get a chance, go to Sublime and scroll through the list to see what's available.

Another cool trick in Sublime Text is that when you highlight your code/text, you can see empty spaces, which are represented by dots or tabs, which are represented by dashes. If you see a mix of both dots and tabs, be sure to convert the tabs to spaces. If there are any dots or dashes present at the end of any line, be sure to get rid of them. They are referred to as trailing white spaces and can cause serious problems down the road in development environments/teams. I address how to prevent this and how to optimize Sublime (through some tricks) for Python in Question #5 below.

Another thing that you can search for using command + shift + p in Sublime is snippets once you set a language. Once you have set the syntax of the file, you can look up snippets which act as outlines. For example, if you wanted to write a for loop, you would search "snippet for" and when you choose "Snippet: For Loop", it will set up a basic for loop for you that you can modify/edit. It basically fills in the template for a for loop, an if statement, a class definition, etc. This is also useful to save time when needed. You can also start typing the beginning of the code and press tab. For example, if I start typing for, an autocomplete option will pop up. I can hit tab, and it will write the for loop template for me.

For those of you who are curious about simple keyboard shortcuts, I have included this table:

| Action                    | Mac               | Windows/Linux         |
| ------------------------- | ----------------- | --------------------- |
| Insert line below         | Cmd+Enter         | Ctrl+Enter            |
| Insert line above         | Cmd+Shift+Enter   | Ctrl+Shift+Enter      |
| Select line (repeatable)  | Cmd+L             | Ctrl+L                |
| Indent line/selection     | Cmd+]             | Ctrl+]                |
| Unindent line/selection   | Cmd+[             | Ctrl+[                |
| Comment line/selection    | Cmd+/             | Ctrl+/                |
| Comment selection (block) | Cmd+Opt+/         | Ctrl+Shift+/          |
| Go to start of line       | Cmd+Left          | Ctrl+Left             |
| Go to end of line         | Cmd+Right         | Ctrl+Right            |
| Delete to start of line   | Cmd+K then Delete | Ctrl+K then Backspace |
| Delete to end of line     | Cmd+K then K      | Ctrl+K then K         |
| Sidebar (toggle)          | Cmd+K then Cmd+B  | Ctrl+K then Ctrl+B    |


## Student Questions

#### Question 1:
What plugins for Sublime would you recommend for Python, CSS, HTML, and JS development?

Answer: Getting a linter for the different languages would be useful. We covered Flake and Pep8 in today's office hours, but there is JShint through Sublime Linters and Code Snippets, which will fill in code outlines for you to make your coding faster. There are code snippets that are prewritten for multiple languages.

[Package Control](https://www.google.com/url?q=https%3A%2F%2Fpackagecontrol.io%2F&sa=D&sntz=1&usg=AFQjCNE0XOxtjMK28L85u0lLYCwS6Fldng) has a lot of different plugins that you should look into and try. They have a variety of categories and plugins showcased on their webpage, such as popular, trending, and new if you want to explore.

#### Question 2:
Does it make sense to use different more specialized editors? For example, one for front-end development, another for Python, etc or would you stick to a more generic 'one size fits all' editor?

Answer: The great thing about something like Sublime Text is that it supports a variety of programming languages and plugins, which makes it very versatile. For now we recommend using a 'one size fits all' editor, such as Sublime since it is a great tool to do the coding you would like to do. Sublime supports JavaScript, HTML, CSS, Python among other languages and has linters and plugins that you can install to use when programming.

#### Question 3:
How can I edit the files in VM (virtual machine), using Sublime Text Editor or any of the other easy text editors?

Answer: With the Vagrant machine that we're using, you don't have to worry about establishing the connection, but if not, these resources for [Mac](https://docs.google.com/document/d/1MZ_rNxJhR4HCU1qJ2-w7xlk2MTHVqa9lnl_uj-zRkzk/pub) and [Windows](https://docs.google.com/document/d/1XKpzgWVRBmXOzdRKKcDcn6tPZYQfq6LP4BizzerMXds/pub). The idea is that you need to establish a bridge/connection of some sort between the local environment and the VM.

#### Question 4:
Apart from Sublime, which open source and platform independent editor would you recommend using for coding? Is vim worth the effort of learning it?

Answer: This was a great question. Vim is a text editor that we recommend you progress into later on in your coding career. It is a little more tricky to use, for example, if you're using vim as your text editor, you will not be able to use your mouse at all while doing so. It may eventually be worth learning, but not quite at this moment. Sublime is definitely more accessible and easier to use.

Another editor that has recently become popular is Atom. Github came out with it recently, and it may be another editor that would be fun to try out other than Sublime.

#### Question 5:
Can you walk through how to set up Sublime to be optimized for Python development, settings, plugins, syntax highlighting, console, etc. Also, can you run commands (or entire files) directly from Sublime or do you have to copy and paste?

Answer: This is a loaded question as there are lot of things that can be done to set up Sublime for Python. There are a couple things that will definitely help you out so let's run through some of these really quick.

Some of these features are built into Sublime to begin. For example, syntax highlighting will occur by itself when you set the page to the language you'd like (Python). You can do this by pressing command + shift + p (Mac) or control + shift + p (Windows) and choosing set syntax: python. You can also save the page as some file name ending with .py.

After doing so, at the bottom of the page you'll see something that says Tab Width or Width. Make sure that your tab widths are set to 4, which is recommended for Python. This means that every time you indent, the indentations will be 4 spaces. Make sure that "Indent using spaces" is checked as well. This will help keep all the indentation in your file consistent.

Also go to User Settings and enter: "trim_trailing_white_space_on_save": true. This will trim any trailing white spaces you may have in your code every time you save your file. Trailing white spaces are empty spaces that are left at the end of lines or in line breaks, and we want to get rid of them because they will cause problems with Version Control later on.

We also talked about linters. We demonstrated how to install Flake8, but there is also Pep8, which is built into Flake8 and Pep257. Pep257 is especially helpful for doc strings, but may be a little annoying for testing and everyday use.

This should be enough to help you get started. After this, you can decide which plugins you'd like to play with and which ones are most helpful for you.

You can also run simple files in Sublime Text. If you hit command + b on Mac, it will run the code and print any print statements to the Sublime Text console. Make sure that the file is saved before running the file.

We mentioned Build Systems during office hours to run external files from Sublime. Documentation on Build can be found [here](http://docs.sublimetext.info/en/latest/reference/build_systems.html).

To open a Python file in general, go to Terminal, go to the directory where the python file is located, and type python [filename].py. When you press enter, the file that you would like to run should run.
