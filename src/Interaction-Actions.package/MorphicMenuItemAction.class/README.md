MorphicMenuItemAction

Instances of me create & configure a menu item Morph as needed to allow a human to trigger a GenericAction.  I handle states and submenus (using MorphicMenuAction if my genericAction is actually a GenericActions).  I also have minimal support for icons & keystrokes, but the interface builder must manually configure them.   Subclassing me for application-specific icon & keystroke support is recommended. 

In the future it would be nice not to have to build all the submenus that will probably not be used.

Instance variables:

icon		the small Icon to display on the left of the menu I create
keystroke	the character a human could press to quickly navigate to the menu item I create


Copyright (c) 2005-2006 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.