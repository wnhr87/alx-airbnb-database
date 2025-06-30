Airbnb Clone - Entity-Relationship Diagram (ERD)
 ### User - user_id (UUID, PK, Indexed) - first_name (VARCHAR, NOT NULL) - last_name (VARCHAR, NOT NULL) - email (VARCHAR, UNIQUE, NOT NULL) - password_hash (VARCHAR, NOT NULL) - phone_number (VARCHAR, NULL) - role (ENUM: guest, host, admin, NOT NULL) - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP) 
### Property - property_id (UUID, PK, Indexed) - host_id (UUID, FK → User.user_id) - name (VARCHAR, NOT NULL) - description (TEXT, NOT NULL) - location (VARCHAR, NOT NULL) - pricepernight (DECIMAL, NOT NULL) - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP) - updated_at (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)
 ### Booking - booking_id (UUID, PK, Indexed) - property_id (UUID, FK → Property.property_id) - user_id (UUID, FK → User.user_id) - start_date (DATE, NOT NULL) - end_date (DATE, NOT NULL) - total_price (DECIMAL, NOT NULL) - status (ENUM: pending, confirmed, canceled, NOT NULL) - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
 ### Payment - payment_id (UUID, PK, Indexed) - booking_id (UUID, FK → Booking.booking_id) - amount (DECIMAL, NOT NULL) - payment_date (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP) - payment_method (ENUM: credit_card, paypal, stripe, NOT NULL) 
### Review - review_id (UUID, PK, Indexed) - property_id (UUID, FK → Property.property_id) - user_id (UUID, FK → User.user_id) - rating (INTEGER, CHECK: 1–5, NOT NULL) - comment (TEXT, NOT NULL) - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
 ### Message - message_id (UUID, PK, Indexed) - sender_id (UUID, FK → User.user_id) - recipient_id (UUID, FK → User.user_id) - message_body (TEXT, NOT NULL) - sent_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)


 ## Relationships - One User owns many Properties - One User books many Properties - One Booking links to one Payment - One Property has many Reviews - One User sends and receives many Messages 
OVERVIEW
This document contains the Entity-Relationship Diagram (ERD) for the "Airbnb Clone" project database. The diagram illustrates the main tables (Entities), their columns (Attributes), and the relationships connecting them.

This schema is designed to ensure a robust, scalable, and normalized data structure
ERD DIAGRAM
 ![Untitled Diagram drawio (4)](https://github.com/user-attachments/assets/2d50115d-bb4e-453c-9613-31cc39a6d081)
