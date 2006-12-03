Generic Action Framework

This simple framework defines an abstraction layer between a model and a human interface.   Using this abstraction, the model answers GenericActions (slightly extended MessageSends) a human might want to perform, and the human interface uses appropriate subclasses of HumanInterfaceAction to construct a human interface to these GenericActions.

Advantages:

- As the model's behavior is extended, interfaces to the model can automatically extend themselves. 
- The model need not be extended to support a new interface framework, or different uses of the same interface framework.
- Much similar code for creating and configuring human interface elements can be centralized in subclasses of HumanInterfaceAction and therefore eliminated from the collaborating human interface.  
- Because of this centralization of similar element creation code, it will be easy for a programmer to create human interfaces with predictable behavior.
- Because of the combination of centralized element creation code and lack of interface knowledge in the model, it will be easier for the community to adopt new interface frameworks.

Usage:

Creation of a human interface to some model object typically begins with the creation of the largest containing interface element in some particular interface framework.  This top element creates its contained interface elements when it is initialized with the model, and they in turn create their contained elements when they are initialized. 

When a containing element wants to create contained controls, it sends #interestingActions to its model (or sometimes other interface elements, to create controls for those elements), which responds with a Collection of GenericActions objects which represent categories of GenericActions.  The containing element may immediately trigger some of the GenericActions objects to get more GenericActions. 

When the containing element has the GenericActions it wants controls for, it wraps them in instances of a concrete subclass of HumanInterfaceAction, typically by calling subclass>>#wrapAll: on the Collection.  When each HumanInterfaceAction is initialized from a GenericAction, it adds the additional information needed to configure a control from the interface framework it uses for this action on this model.  Typically this information is stored in the HumanInterfaceAction subclass.

Now the containing element can send #control to ask each HumanInterfaceAction to create and configure a control which triggers its GenericAction.  The containing element adds this control to itself.

Known rough spots (framework may be redesigned in the future to fix these issues):

- If only some GenericActions categories are triggered immediately to build the collection of GenericActions which will be available through the human interface, the human interface must understand at least a little about the GenericAction categories that will be offered by the model in order to choose which to trigger immediately.  This coupling of interface to model is not desirable, but may be inevitable.
- Because of the above, superclass authors must think carefully about the needs of possible future subclasses when they design categories of GenericActions. 
- If a human interface element requires application-specific configuration which is not inherent in the model (e.g. colors which correspond to values in the model), the model cannot supply the configuration because it should not know about the human interface.  Therefore, the human interface must again understand the model enough to do this configuration.   One (untried) solution might be to make application-specific subclasses of HumanInterfaceAction subclasses.

Credits:

This framework was inspired by OBAction, from the OmniBrowser package.


GenericAction

I am derived from MessageSend.  My instances represent messages a human might want to send.   They contain generic information a human could use to infer what would happen if she sent this message.  They do not contain information or behavior specific to any particular sensory mode (e.g. no sounds, images, et cetera) or human interface framework.

My instances are typically wrapped by instances of HumanInterfaceAction's concrete subclasses, and triggered when a human invokes a control created by the wrapping instance.

Instance variables:

label			a String containing a human-comprehensible name for me
description	a String containing a human-readable description of my effects


Copyright (c) 2005-2006 Brenda Larcom <asparagi@hhhh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.