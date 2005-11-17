My instances represent messages which toggle a boolean state.   For each of my instances, selector should alter the state answered by getStateSelector.

Instance variables:

getStateSelector		a Symbol containing the name of a method which, when sent to my receiver, will answer true or false
getStateArguments	an Array of arguments for getStateSelector