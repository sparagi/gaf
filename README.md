# Generic Actions Framework

GAF is a framework that human interfaces use to discover and expose actions of interest on the models they display.

This simple framework (inspired by OBAction, from OmniBrowser) defines an abstraction layer between a model and a human interface. Using this abstraction, the model answers GenericActions (slightly extended MessageSends) a human might want to perform, and the human interface uses appropriate subclasses of HumanInterfaceAction to construct a human interface to these GenericActions.
