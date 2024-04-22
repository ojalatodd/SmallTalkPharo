Class {
	#name : #Showing,
	#superclass : #Object,
	#instVars : [
		'ticketPrice',
		'baseNumberAttendees',
		'baseTicketPrice',
		'attendeePriceCoefficient',
		'expenses'
	],
	#category : #Cinemas
}

{ #category : #'instance creation' }
Showing class >> withTicketPrice: aFixedPoint [
"create an instance with ticket price aFixedPoint"

	^self new initialize ticketPrice: aFixedPoint 
]

{ #category : #accessing }
Showing >> attendeePriceCoefficient [
	^attendeePriceCoefficient 
]

{ #category : #accessing }
Showing >> attendeePriceCoefficient: aNumber [

	attendeePriceCoefficient := aNumber.
]

{ #category : #accessing }
Showing >> baseNumberAttendees [ 
	^baseNumberAttendees 
]

{ #category : #accessing }
Showing >> baseNumberAttendees: aNumber [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	baseNumberAttendees := aNumber.
]

{ #category : #accessing }
Showing >> baseTicketPrice [
	^baseTicketPrice 
]

{ #category : #accessing }
Showing >> baseTicketPrice: aNumber [

	baseTicketPrice := aNumber
]

{ #category : #accessing }
Showing >> expenses [
	^expenses 
]

{ #category : #accessing }
Showing >> expenses: anObject [

	expenses := anObject 
]

{ #category : #accessing }
Showing >> expensesAt: numberOfAttendees [

	^self expenses expensesAt: numberOfAttendees 
]

{ #category : #accessing }
Showing >> incomeAt: numberOfAttendees [

	^numberOfAttendees * self ticketPrice.
	
]

{ #category : #initialize }
Showing >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	self 
		baseNumberAttendees: 120;
		baseTicketPrice: 5.00s;
		attendeePriceCoefficient: 150.00s;
		expenses: Expenses new
]

{ #category : #'as yet unclassified' }
Showing >> numberOfAttendees [
	^(self baseNumberAttendees) 
	+ (self attendeePriceCoefficient
	* (self baseTicketPrice - self ticketPrice)) rounded
]

{ #category : #'as yet unclassified' }
Showing >> profit [

	| numberOfAttendees |
	numberOfAttendees := self numberOfAttendees.
	^(self incomeAt: numberOfAttendees ) - (self expensesAt: numberOfAttendees )
	
]

{ #category : #accessing }
Showing >> ticketPrice [

	^ticketPrice 
]

{ #category : #accessing }
Showing >> ticketPrice: aNumber [

	ticketPrice := aNumber
]
