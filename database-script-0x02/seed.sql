-- Sample Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, role)
VALUES
('uuid-1', 'Ama', 'Mensah', 'ama@example.com', 'hashed_pw1', 'host'),
('uuid-2', 'Kwame', 'Boateng', 'kwame@example.com', 'hashed_pw2', 'guest');

-- Sample Property
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('prop-1', 'uuid-1', 'Cozy Apartment', 'Bright, airy 2-bed apartment in Osu', 'Accra', 75.00);

-- Sample Booking
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('book-1', 'prop-1', 'uuid-2', '2025-07-01', '2025-07-05', 300.00, 'confirmed');

-- Sample Payment
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('pay-1', 'book-1', 300.00, 'credit_card');

-- Sample Review
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('rev-1', 'prop-1', 'uuid-2', 5, 'Great place, super clean and central!');

-- Sample Message
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('msg-1', 'uuid-2', 'uuid-1', 'Hey Ama! Just wanted to say thanks again!');
