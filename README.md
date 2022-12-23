# Rideshare

DATABASE REQUIREMENTS for a RIDESHARE COMPANY
The rideshare company contracts drivers. Each driver is identified by unique driver identification number, first name, middle name, last name, DOB, email, phone number, and address. A driver can register only one car with the rideshare company.
The company stores information about all car registered, a car is identified by unique identification number (license plate number), make, model, car type (SUV, Sedan, van, etc.)
A rider(customer) is identified by a unique identification number, first name, middle name, last name, email, phone number, and phone and address
The company keeps track of each trip established between a driver and rider. Each trip is identified by unique ID. Each trip can be completed by only one driver. A rider can request only one trip at a time. Each trip consists of a pickup location and drop of location, travel time, travel distance. Also, a trip could have at most one stop.
A stop is uniquely identified by a stop ID. A stop must belong to a specific trip, and consists of travel time, travel distance and stop location.
The rideshare company will also be interested in keeping of track of payment from every rider(customer) to a driver involved in a specific trip. Each payment is identified by a payment ID, trip ID, payment type (cash or credit) and payment amount.
