# Requirements and Conceptual Model
Group Members: Sha'Rya Weaver, Vesna Cari, Maia Black, Sharleen Guerrero

## Brainstorm
**End User:** Lana (the dog-walking business owner)
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

# AI Feedback Final Logical Model

## Entities and Attributes
**Clients**
- ClientID (PK)
- ClientName
- PhoneNumber
- Email
- StreetAddress
- City
- State
- Zip Code

**Dogs**
- DogID (PK)
- ClientID (FK to Clients)
- DogName
- Breed
- DateOfBirth
- Notes

**Appointments**
- AppointmentID (PK)
- ClientID (FK to Client)
- DogID (FK to Dogs)
- Date
- Time
- DurationMinutes
- Status

**Payments**
- PaymentID (PK)
- AppointmentID (FK to Appointments)
- PaymentDate
- PaymentMethod
- Price
- PaymentConfirmation

**Walk Logs**
- LogID (PK)
- DogID (FK to Dogs)
- ApppointmentID (FK to Appointments)
- WalkDate
- DistanceMiles
- Notes

## Relationships
- One client can have one or more dogs (one-to-many).
- One client can have one or more appointments (one-to-many)
- One dog can have one or more appointments (one-to-many)
- One dog can have one or more walk logs (one-to-many)
- One appointment has one payment (one-to-one)
- One appointment has one walk log (one-to-one)

## Reviewing AI Feedback and ERDs
**Similarities:**
Overall, each ERD was similar because they included all five entities, labeled ClientID and DogID as primary keys, and established relationships between the tables. They also all successfully established Clients to Dogs as a one-to-many relationship.

**Differences:**
There were some key differences across the ERDs, mainly in terms of how they formatted relationships in tables. For instance, Sha'Rya Weaver's diagram added a extra AppointmentStatus and PaymentStatus tables. On the other hand, Maia Blacks's ERD identified the Appointment to Dogs relationship as many-to-many, resolving this by adding a bridge table called Appointment_Dogs. Sharleen Guerrero's ERD did not go beyond the scope of the logical model created, but it did identify all relationships as one-to-many so no resolving table was necessary. Vesna Cari's ERD opted for a text format. 


  

