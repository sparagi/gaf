My instances represent messages whose label can be edited by a human.  Typically instances of me would be used for messages which are somehow proxy-like, e.g. my use in SpiralNotebook to change which section is visible.

Instance variables:

getLabelSelector		a Symbol containing the name of a method which, when sent to my receiver, will answer my label
setLabelSelector		a Symbol containing the name of a method which, when sent to my receiver, will set my label
labelArguments		an Array of arguments for getLabelSelector and setLabelSelector; for setLabelSelector the new label will be the last argument