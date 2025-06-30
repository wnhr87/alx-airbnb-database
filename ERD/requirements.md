
OVERVIEW
This document contains the Entity-Relationship Diagram (ERD) for the "Airbnb Clone" project database. The diagram illustrates the main tables (Entities), their columns (Attributes), and the relationships connecting them.

This schema is designed to ensure a robust, scalable, and normalized data structure


🧱 Entities and Key Attributes

1. User
- user_id (PK)
- first_name, last_name
- email (UNIQUE)
- password_hash
- phone_number
- role (ENUM: guest, host, admin)
- created_at

2. Property
- property_id (PK)
- host_id (FK → User)
- name, description, location, pricepernight
- created_at, updated_at
  
3. Booking
- booking_id (PK)
- property_id (FK → Property)
- user_id (FK → User)
- start_date, end_date, total_price
- status (ENUM: pending, confirmed, canceled)
- created_at

4. Payment
- payment_id (PK)
- booking_id (FK → Booking)
- amount, payment_date
- payment_method (ENUM: credit_card, paypal, stripe)
  
5. Review
- review_id (PK)
- property_id (FK → Property)
- user_id (FK → User)
- rating (1–5), comment, created_at

  6. Message
- message_id (PK)
- sender_id (FK → User)
- recipient_id (FK → User)
- message_body, sent_at






🔗 Relationships Between Entities
Relationship	Type	Cardinality
User to Property	1:N (host_id)	One user can host many properties
User to Booking	1:N (user_id)	One user can make multiple bookings
Property to Booking	1:N (property_id)	One property can be booked many times
Booking to Payment	1:1 (booking_id)	One payment per booking
User to Review	1:N (user_id)	One user can leave multiple reviews
Property to Review	1:N (property_id)	One property can have many reviews
User to Message (sender/recipient)	1:N (two foreign keys)	Users can send and receive messages




🔒 Constraints Summary
•	Unique: User.email
•	Check: Review.rating BETWEEN 1 AND 5, Booking.status ENUM, User.role ENUM, Payment.payment_method ENUM
•	Foreign Keys:
•	Property.host_id → User.user_id
•	Booking.property_id → Property.property_id
•	Booking.user_id → User.user_id
•	Payment.booking_id → Booking.booking_id
•	Review.property_id → Property.property_id
•	Review.user_id → User.user_id
•	Message.sender_id and Message.recipient_id → User.user_id



ERD DIAGRAM


 ![Untitled Diagram drawio (4)](https://github.com/user-attachments/assets/2d50115d-bb4e-453c-9613-31cc39a6d081)





