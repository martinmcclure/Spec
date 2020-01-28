"
My context must evaluate to a Behavior. I then browse the hierarchy of that behavior.
"
Class {
	#name : #SpBrowseClassHierarchyCommand,
	#superclass : #SpSystemNavigationCommand,
	#category : #'Spec2-Commands-Navigation'
}

{ #category : #defaults }
SpBrowseClassHierarchyCommand class >> defaultIconName [
	^#smallSystemBrowser 
]

{ #category : #default }
SpBrowseClassHierarchyCommand class >> shortName [

	^ 'class hierarchy'
]

{ #category : #executing }
SpBrowseClassHierarchyCommand >> execute [
	self flag: 'Wrong: should be either method inheritance tree or class hierarchy...'.
	self systemNavigation browseHierarchy: self context
]