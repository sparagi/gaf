I am a part of the HumanInterfaceAction framework.  My instances represent messages a human might want to send.   They contain generic information a human could use to infer what would happen if she sent this message.  They do not contain information or behavior specific to any particular sensory mode (e.g. no sounds, images, et cetera) or human interface framework.

My instances are typically wrapped by instances of HumanInterfaceAction, and triggered when a human invokes a control created by the wrapping instance.

Instance variables:

label			a String containing a human-comprehensible name for me
description	a String containing a human-readable description of my effects
