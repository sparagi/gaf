EditableAction

My instances represent messages whose label can be edited by a human.  Typically instances of me would be used for messages which are somehow proxy-like, e.g. my use in SpiralNotebook to change which section is visible.  In this case, labelReceiver is the object being proxied and receiver is the object which will manipulate a proxy for labelReceiver.

Instance variables:

labelReceiver			an Object which will receive label-related messages
getLabelSelector		a Symbol containing the name of a method which, when sent to my labelReceiver, will answer my label
setLabelSelector		a Symbol containing the name of a method which, when sent to my labelReceiver, will set my label
labelArguments		an Array of arguments for getLabelSelector and setLabelSelector; for setLabelSelector the new label will be added as an additional  argument at the end of the array


Copyright (c) 2005-2006 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.