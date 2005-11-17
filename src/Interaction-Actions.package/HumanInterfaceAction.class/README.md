I am an abstract class.  Instances of my concrete subclasses can create and configure human interface elements which enable humans to trigger specific GenericActions.  Therefore, my instances contain a GenericAction and presentation information specific to a particular human sense (e.g. sight, hearing) and interface framework.   My concrete subclasses typically contain a stash of presentation information which they draw on when initializing their instances.

Instance variables:

genericAction		the GenericAction I embellish


HumanInterfaceAction framework background:

In most cases a human interface will include elements (controls) whose primary responsibility is to enable a human to send a message to a model.  When a model and an interface collaborate using the HumanInterfaceAction framework, the interface asks the model which messages would be of interest to humans.  Therefore, as the model's behavior is extended, interfaces to the model can automatically extend themselves.  The model creates GenericActions, not HumanInterfaceActions.  Therefore, the model need not be extended to support a new interface framework, or different uses of the same interface framework.  HumanInterfaceActions create and configure human interface elements in a given framework.  Therefore, much similar code for doing this can be eliminated from the collaborating human interface.   The collaboration works as follows:

Creation of a human interface to some model object typically begins with the creation of the largest containing interface element in some particular interface framework.  This top element, which may have specific expectations about the model's protocol, creates its contained interface elements when it is initialized with the model, and they in turn create their contained elements when they are initialized. 

When a containing element wants to create contained controls, it sends #interestingActions to its model (or sometimes other interface elements, to create controls for those elements), which responds with a Collection of GenericActions objects which represent categories of GenericActions.  The containing element may immediately trigger some of the GenericActions objects to get more GenericActions.  

When the containing element has the GenericActions it wants controls for, it wraps them in instances of a concrete subclass of HumanInterfaceAction, typically by calling subclass>>#wrapAll: on the Collection.  When each HumanInterfaceAction is initialized from a GenericAction, it adds the additional information needed to configure a control from the interface framework it uses for this action on this model.  Typically this information is stored in the HumanInterfaceAction subclass.

Now the containing element can send #control to ask each HumanInterfaceAction to create and configure a control which triggers its GenericAction.  The containing element adds this control to itself.

This framework was inspired by OBAction, from the OmniBrowser package.