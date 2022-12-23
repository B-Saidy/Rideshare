
DROP SCHEMA IF EXISTS rideshare;

CREATE SCHEMA rideshare;
USE rideshare;



CREATE TABLE driver ( 
                      driverID      VARCHAR(15) NOT NULL ,
                      licenseNo     VARCHAR(15) NOT NULL ,  
		      carID         VARCHAR(9) NOT NULL,     
		      fname         VARCHAR(15) NOT NULL ,
                      mname         VARCHAR(15) NULL ,
                      lname         VARCHAR(15) NOT NULL , 
                      dob           DATE NOT NULL , 
                      phoneNo       VARCHAR(15) NULL ,
                      email         VARCHAR(20) NOT NULL , 
                      address       VARCHAR(10) NOT NULL,
                      PRIMARY KEY (driverID));

CREATE TABLE rider (riderID VARCHAR(15) NOT NULL , 
                    fname VARCHAR(15) NOT NULL ,
                    mname VARCHAR(15) NULL , 
                    lname VARCHAR(15) NOT NULL ,
                    phoneNo INT(15) NULL , email VARCHAR(25) NOT NULL ,
                    address VARCHAR(50) NOT NULL , 
                    PRIMARY KEY (riderID));

CREATE TABLE car (carID   VARCHAR(9) NOT NULL ,
                  make    VARCHAR(15) NOT NULL ,
                  model   VARCHAR(15) NOT NULL ,
                  carType VARCHAR(15) NOT NULL,
                  PRIMARY KEY (carID));

CREATE TABLE trip (tripID VARCHAR(15) NOT NULL ,
                   driverID VARCHAR(15) NOT NULL,
                   riderID VARCHAR(15) NOT NULL,
                   stopID   VARCHAR(15) NULL,
                   date DATE NOT NULL , 
                   travelTime VARCHAR(15) NOT NULL , 
                   travelDist VARCHAR(15) NOT NULL ,
                   pickupLocID VARCHAR(15)  , 
                   dropoffLocID VARCHAR(15) , 
                   PRIMARY KEY (tripID));

CREATE TABLE stop (stopID     VARCHAR(15) NOT NULL ,
                   travelTime VARCHAR(15) NOT NULL , 
                   travelDist VARCHAR(15) NOT NULL ,
                   stopLocID  VARCHAR(15) NOT NULL ,     
                   PRIMARY KEY (stopID));

CREATE TABLE location (locID      VARCHAR(15) NOT NULL ,
                       streetName VARCHAR(25) NOT NULL ,
                       city       VARCHAR(20) NOT NULL , 
                       state      VARCHAR(2) NOT NULL ,
                       zipcode    INT(5) NOT NULL ,
                       PRIMARY KEY (locID));

CREATE TABLE payment (paymentID   VARCHAR(15) NOT NULL ,
                      tripID      VARCHAR(15) NOT NULL,
                      paymentType VARCHAR(15) NOT NULL ,
                      amount      DECIMAL(19,4) NULL DEFAULT '0.0000' , 
                      PRIMARY KEY (paymentID));

 /* foreign key for trips */
 ALTER TABLE trip ADD CONSTRAINT fk_trip_driver FOREIGN KEY (driverID) REFERENCES driver(driverID);
 ALTER TABLE trip ADD CONSTRAINT fk_trip_rider FOREIGN KEY (riderID) REFERENCES rider(riderID);
 ALTER TABLE trip ADD CONSTRAINT fk_trip_pickuploc FOREIGN KEY (pickupLocID) REFERENCES location(locID);
 ALTER TABLE trip ADD CONSTRAINT fk_trip_dropoffploc FOREIGN KEY (dropoffLocID) REFERENCES location(locID);
 ALTER TABLE trip ADD CONSTRAINT fk_trip_stop FOREIGN KEY (stopID) REFERENCES stop(stopID);
 /* foreign key for payments */
 ALTER TABLE payment ADD CONSTRAINT fk_payment_trip FOREIGN KEY (tripID) REFERENCES trip(tripID);
 /* foreign key for stops */
 ALTER TABLE stop ADD CONSTRAINT fk_stop_location FOREIGN KEY (stopLocID) REFERENCES location(locID);
/* foreign key for drivers */
 ALTER TABLE driver ADD CONSTRAINT fk_driver_car FOREIGN KEY (carID) REFERENCES car(carID);




 
