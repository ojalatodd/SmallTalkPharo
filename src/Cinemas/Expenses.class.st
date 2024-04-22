Class {
	#name : #Expenses,
	#superclass : #Object,
	#instVars : [
		'perShowing',
		'perAttendee'
	],
	#category : #Cinemas
}

{ #category : #'instance creation' }
Expenses class >> new [

	^super new initialize 
]

{ #category : #accessing }
Expenses >> expensesAt: numberOfAttendees [
	^self perShowing + (numberOfAttendees * self perAttendee)
]

{ #category : #initialization }
Expenses >> initialize [ 

	self 
		perShowing: 180.00s;
		perAttendee: 0.05s
		
]

{ #category : #accessing }
Expenses >> perAttendee [
	^perAttendee 
]

{ #category : #accessing }
Expenses >> perAttendee: aNumber [

	perAttendee := aNumber
]

{ #category : #accessing }
Expenses >> perShowing [

	^perShowing 
]

{ #category : #accessing }
Expenses >> perShowing: aNumber [

	perShowing := aNumber
]
