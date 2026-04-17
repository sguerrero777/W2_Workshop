# Requirements and Conceptual Model
Group Members: Sha'Rya Weaver, Vesna Cari, Maia Black, Sharleen Guerrero

## Brainstorm
**End User** Lana (the dog-walking business owner)
Lana needs to be able to schedule dog-walking appointments, record payments, keep track of clients and dogs, notes from walk sessions, and route preferences. 
*Categories:* Clients, Dogs, Appointments/Schedule, Payments, Walk Logs, Location

## Data Categories
**Clients**
- Client name
- Phone number
- Email
- Address

**Dogs**
- Dog name
- Breed
- Age
- Behavioral/Health notes

**Appointments**
- Date and time
- Duration
- Availibility
- Status

**Payments**
- Payment method
- Date of Payment
- Price
- Payment Confirmation
- Payment Number

**Walk Logs**
- Date of walk
- Duration
- Notes from walk
- Dog name

**Location**
- City
- Walking route
- Distance

# Logical Model

## Entities and Attributes
**Clients**
- ClientID
- ClientName
- PhoneNumber
- Email
- Address

**Dogs**
- DogTag
- DogName
- Breed
- Age
- DogNotes
- ClientName

**Appointments**
- AppointmentID
- Date
- Time
- Duration
- Availibility
- Status

**Payments**
- PaymentID
- PaymentDate
- PaymentMethod
- Price
- Status

**Walk Logs**
- LogID
- Date
- Duration
- Notes
- DogTag

## Relationships
- One client can have one or more dogs.
- Clients can have one or more appointments
- Dogs can have more than one walk log or notes.

## Many-to-Many Relationships
- Clients and Appointments: Clients can have many appointments.
