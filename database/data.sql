USE food_delivery;

INSERT INTO restaurants (name, address, cuisine)
VALUES
  ('Spice Route', '123 Main Street', 'Indian'),
  ('Pasta Palace', '45 Olive Avenue', 'Italian'),
  ('Sushi World', '88 Ocean Drive', 'Japanese');

INSERT INTO menu_items (restaurant_id, name, description, price)
VALUES
  (1, 'Paneer Tikka', 'Grilled cottage cheese with spices', 8.99),
  (1, 'Butter Chicken', 'Creamy tomato-based chicken curry', 10.99),
  (2, 'Spaghetti Carbonara', 'Creamy pasta with bacon', 11.50),
  (2, 'Margherita Pizza', 'Classic pizza with tomato and mozzarella', 9.50),
  (3, 'Salmon Nigiri', 'Fresh salmon over rice', 12.00),
  (3, 'California Roll', 'Crab, avocado, and cucumber roll', 9.00);
