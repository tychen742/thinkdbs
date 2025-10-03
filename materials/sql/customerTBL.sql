					##### I know this might be new to you, but 
					##### reading SQL code is easier then you think because SEQUL is Structure English Query Language.
					##### step 00: save this script to a .sql file: customerTBL.sql in your local class directory
                    ##### step 01: uncomment line #7; (work with a partner would help a lot)
					##### we are telling MySQL the DB we want to use.
                    
-- USE testDB04; 		##### step 02: replace this DB name with your own test DB name and RUN the line

                    ##### now we want to create a table called tblCustomer (if it does not exist)
					##### step 03: uncomment line #12 through #21

-- CREATE TABLE IF NOT EXISTS tblCustomer (
--     CustomerID INT NOT NULL,
--     CustomerName VARCHAR(64) NOT NULL,
--     ContactName VARCHAR(64) NOT NULL,
--     Address VARCHAR(64),
--     City VARCHAR(32),
--     PostalCode VARCHAR(20),
--     Country VARCHAR(32),
--     PRIMARY KEY (CustomerID)
-- );				
					##### step 04: run the CREATE TABLE code block above
                    ##### step 05: refresh Schemas to check if the table is successfully created; click to check Columns
					##### now we want to insert multiple lines of data into your database.
                    ##### step 06: uncomment line #27 through #33 (select multiple line and do "Modifier+/")
                    
-- INSERT INTO tblCustomer(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
-- (1, 'Alfreds Futterkiste', 'Maria Anders',	'Obere Str. 57', 'Berlin', '12209', 'Germany'),
-- (2,	'Ana Trujillo Emparedados y helados', 'Ana Trujillo',	'Avda. de la Constitución 2222', 'México D.F.',	'05021',	'Mexico'),
-- (3,	'Antonio Moreno Taquería',	'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
-- (4, 'Around the Horn',	'Thomas Hardy',	'120 Hanover Sq.',	'London', 'WA1 1DP', 'UK'),
-- (5,	'Berglunds snabbköp', 'Christina Berglund',	'Berguvsvägen 8', 'Luleå',	'S-958 22',	'Sweden') 
-- ;

					##### step 07: run the INSERT INTO code block above
					##### step 08: comment out the above INSERT INTO code block (to prevent the Error Code 1062. Duplicate entry ...)
                    ##### step 09: uncomment line #39
                    
-- -- SELECT * FROM tblCustomer;

					##### step 10: run line #39
                    ##### now you should see the content of tblCustomer
                    ##### step 11: comment out line #45
                    
-- UPDATE tblCustomer SET CustomerName = '<YOUR_NAME>' WHERE CustomerID = 1; ##### replace YOUR_NAME with your own name; remove the brackets, too.

					##### step 12: run the SELECT statement in line #45 
