
USE rideshare;

INSERT INTO car(carID, make, model, carType) VALUES
        ('C01', 'GMC', 'Terrain', 'SUV'),
	('C02', 'Honda', 'CRV', 'SUV'),
	('C03', 'Toyota', 'RAV4', 'SUV'),
	('C04', 'Honda', 'CIVI', 'Sedan'),
	('C05', 'Chrysler', 'Pacifica', 'Van'),
	('C06', 'Hyundai', 'Elentra', 'Sedan'),
	('C07', 'Chrysler', '300s', 'Sedan'),
	('C08', 'Chevrolet', 'Malibu', 'Sedan'),
	('C09', 'Ford', 'Explorer', 'SUV'),
	('C10', 'BMW', 'X5', 'SUV');
	

INSERT INTO driver (driverID,licenseNo,carID,fname,mname,lname,dob,phoneNo,email,address) VALUES 
     ('D01' , 'ABC001', 'C01', 'Anna','F', 'John','1985-03-22', '917-746-0000', 'abc@rideshare.com', '5362 hillstech dr., FH, MI 01010' )
    ,('D02' , 'BAC002', 'C02', 'Dan','', 'Nash','1986-03-22', '734-746-0000', 'bca@rideshare.com', '4536 hillstech dr., FH, MI 01010' )
    ,('D03' , 'CAB003', 'C03', 'Moses','T', 'Reymond','1990-04-22', '347-876-0000', 'aac@rideshare.com', '3454 hillstech driv, FH, MI 01010')
    ,('D04' , 'DAB004', 'C04', 'Sam','ML', 'Haris','1995-03-22', '917-756-1000', 'acc@rideshare.com', '3899 hillstech driv, FH, MI 01010')
    ,('D05',  'ABD005', 'C05', 'Ibu','Omar', 'Garba','1995-03-22', '313-746-1000', 'cac@rideshare.com', '3346 hillstech driv, FH, MI 01010')
    ,('D06',  'DAC006', 'C06', 'Ibrahim','ousman', 'Monir','1995-04-22', '248-746-0000', 'shdc@rideshare.com', '3800 hillstech driv, FH, MI 01010')
    ,('D07',  'CAD007', 'C07', 'Naresh','', 'Gupta','1990-10-22', '313-776-0000', 'acf@rideshare.com', '6420 hillstech driv, FH, MI 01010')
    ,('D08',  'ADE008', 'C08', 'Campbel','F', 'John','1985-03-12', '313-746-0009', 'gfh@rideshare.com', '6372 haggerty rd, FH, MI 01010')
    ,('D09',  'EDA009', 'C09', 'George','D', 'Haris','1997-03-22', '313-796-1000', 'hfj@rideshare.com', '9839 hillstech driv, FH, MI 01010')
    ,('D10',  'DAE010', 'C10', 'Jannet','', 'Nash','1945-03-22', '917-434-0000', 'gre@rideshare.com', '4783 hillstech driv, FH, MI 01010');



INSERT INTO rider (riderID, fname, mname, lname, phoneNo, email, address) VALUES
	('R01', 'Karim', NULL, 'Bens', '999-756-1000', 'karim@yahoo.com', '948 w vernor rd., Dearborn MI, 48228'),
	('R02', 'Kamala', NULL, 'Nash', '313-756-1000', 'kamala@yahoo.com', '948 washington blv., Detroit, MI 48228'),
	('R03', 'Bai', 'Ousman', 'Jobe', '347-756-1000', 'bai@yahoo.com', '948 haggerty rd., Belleville, MI 48228'),
	('R04', 'Aal', 'M', 'max', '248-756-1000', 'Aal@yahoo.com', '784 newyork st., Troy MI 48228'),
	('R05', 'Ali', 'Yaser', 'Hussain', '918-756-1000', 'Ali@yahoo.com', '1048 ford rd., Dearborn MI 48228'),
	('R06', 'Sahud', NULL, 'mustafa', '313-756-1000', 'mustafa@yahoo.com', '432 ford rd., Dearborn MI 48228');

INSERT INTO location(locID, streetName, city, state, zipcode) VALUES
	('loc01', '7583 homer', 'Detroit', 'MI', 48339),
	('loc02',  '8732 west fort st', 'Detroit', 'MI', 48339),
	('loc03', '7583 dix avenue', 'Dearborn', 'MI', 48339),
	('loc04', '5943 vernor hwy', 'Troy', '', 48539),
	('loc05', '9573 Shafer hwy', 'Columbus', 'OH', 59435),
	('loc06', '643 haggerty', 'Bellville', 'MI', 58326),
	('loc07', '584 Lewis st', 'Novi', 'MI', 48339),
	('loc08', '8593 Southfiled Rd', 'Southfield', 'MI', 48339),	
	('loc09', '987 eagle st.', 'Louisville', 'KY', 48239),
	('loc10', '783 griswol', 'Cincinati', 'OH', 42345),
	('loc11', '5832 greenfield', 'Columnus', 'OH', 43479),
	('loc12', '3425 schafer hwy', 'Toledo', 'OH', 84632);

INSERT INTO stop (stopID, travelTime, travelDist, stopLocID) VALUES
	('S01','5', '2', 'loc02'),
	('S02','9', '5', 'loc06'),
	('S03','12', '9', 'loc10'),
	('S04','2', '1', 'loc03');

INSERT INTO trip (tripID, driverID, riderID, stopID, date, travelTime, travelDist, pickupLocID, dropoffLocID) VALUES
	('T01', 'D02', 'R03', NULL, '2022-02-23', '4', '2','loc02', 'loc01'),
	('T02', 'D06', 'R05', 'S03', '2022-11-23', '60', '55','loc11', 'loc12'),
	('T03', 'D05', 'R01', 'S02', '2022-07-23', '30', '28','loc04', 'loc08'),
	('T04', 'D02', 'R02', NULL, '2022-02-23', '9', '4','loc02', 'loc01'),
	('T05', 'D05', 'R03', NULL, '2022-10-23', '40', '35','loc06', 'loc07'),
	('T06', 'D08', 'R05', 'S04', '2022-09-23', '70', '70','loc07', 'loc04'),
	('T07', 'D10', 'R04', NULL, '2022-01-23', '50', '35','loc06', 'loc07'),
	('T08', 'D09', 'R01', 'S01', '2021-10-23', '45', '40','loc09', 'loc07'),
	('T09', 'D01', 'R04', NULL, '2021-07-23', '50', '36','loc04', 'loc10'),
 	('T10', 'D05', 'R03', NULL, '2022-06-23', '30', '25','loc12', 'loc09'),
	('T11', 'D07', 'R02', NULL, '2021-04-23', '80', '76','loc09', 'loc12'),
	('T12', 'D03', 'R04', NULL, '2021-09-23', '40', '35','loc06', 'loc07');

INSERT INTO payment (paymentID, tripID, paymentType, amount) VALUES
	('P01', 'T04', 'cash', 10.00),
	('P02', 'T06', 'credit', 90.00),
	('P03', 'T05', 'credit', 30.00),
	('P04', 'T08', 'cash', 38.00),
	('P05', 'T12', 'cash', 50.00),
	('P06', 'T10', 'credit', 30.00),
	('P07', 'T09', 'credit', 60.00),
	('P08', 'T07', 'credit', 50.00),
	('P09', 'T11', 'cash', 100.00),
	('P10', 'T02', 'cash', 75.00),
	('P11', 'T03', 'credit', 30.00),
	('P12', 'T01', 'cash', 10.00);


