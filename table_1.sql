
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(50),
    CreatedAt DATETIME DEFAULT GETDATE()
);


INSERT INTO Customers (FirstName, LastName, Email, Phone, City, Country)
VALUES 
('Aarav', 'Sharma', 'aarav.sharma1@email.com', '9876543210', 'Delhi', 'India'),
('Vivaan', 'Verma', 'vivaan.verma2@email.com', '9876543211', 'Mumbai', 'India'),
('Aditya', 'Singh', 'aditya.singh3@email.com', '9876543212', 'Kolkata', 'India'),
('Vihaan', 'Yadav', 'vihaan.yadav4@email.com', '9876543213', 'Chennai', 'India'),
('Arjun', 'Reddy', 'arjun.reddy5@email.com', '9876543214', 'Hyderabad', 'India'),
('Sai', 'Kumar', 'sai.kumar6@email.com', '9876543215', 'Bangalore', 'India'),
('Krishna', 'Nair', 'krishna.nair7@email.com', '9876543216', 'Kochi', 'India'),
('Ishaan', 'Das', 'ishaan.das8@email.com', '9876543217', 'Bhubaneswar', 'India'),
('Anaya', 'Gupta', 'anaya.gupta9@email.com', '9876543218', 'Pune', 'India'),
('Diya', 'Mishra', 'diya.mishra10@email.com', '9876543219', 'Indore', 'India');


INSERT INTO Customers (FirstName, LastName, Email, Phone, City, Country)
VALUES 
('Kabir', 'Tripathi', 'kabir.tripathi11@email.com', '9876543220', 'Ahmedabad', 'India'),
('Aryan', 'Chopra', 'aryan.chopra12@email.com', '9876543221', 'Surat', 'India'),
('Rahul', 'Mehta', 'rahul.mehta13@email.com', '9876543222', 'Nagpur', 'India'),
('Neha', 'Bansal', 'neha.bansal14@email.com', '9876543223', 'Ludhiana', 'India'),
('Sneha', 'Kaur', 'sneha.kaur15@email.com', '9876543224', 'Amritsar', 'India'),
('Meera', 'Gill', 'meera.gill16@email.com', '9876543225', 'Jalandhar', 'India'),
('Reyansh', 'Saxena', 'reyansh.saxena17@email.com', '9876543226', 'Varanasi', 'India'),
('Tanya', 'Choudhary', 'tanya.choudhary18@email.com', '9876543227', 'Kanpur', 'India'),
('Ira', 'Malhotra', 'ira.malhotra19@email.com', '9876543228', 'Patna', 'India'),
('Rohan', 'Thakur', 'rohan.thakur20@email.com', '9876543229', 'Ranchi', 'India');


INSERT INTO Customers (FirstName, LastName, Email, Phone, City, Country)
VALUES 
('Divya', 'Joshi', 'divya.joshi21@email.com', '9876543230', 'Bhopal', 'India'),
('Tanvi', 'Rajput', 'tanvi.rajput22@email.com', '9876543231', 'Raipur', 'India'),
('Nikhil', 'Pandey', 'nikhil.pandey23@email.com', '9876543232', 'Guwahati', 'India'),
('Pooja', 'Dixit', 'pooja.dixit24@email.com', '9876543233', 'Agra', 'India'),
('Lakshmi', 'Venkat', 'lakshmi.venkat25@email.com', '9876543234', 'Vijayawada', 'India'),
('Yash', 'Khandelwal', 'yash.khandelwal26@email.com', '9876543235', 'Gwalior', 'India'),
('Manish', 'Tiwari', 'manish.tiwari27@email.com', '9876543236', 'Jabalpur', 'India'),
('Sanjana', 'Kapoor', 'sanjana.kapoor28@email.com', '9876543237', 'Dehradun', 'India'),
('Raj', 'Agarwal', 'raj.agarwal29@email.com', '9876543238', 'Bareilly', 'India'),
('Shruti', 'Chatterjee', 'shruti.chatterjee30@email.com', '9876543239', 'Durgapur', 'India');

INSERT INTO Customers (FirstName, LastName, Email, Phone, City, Country)
VALUES 
('Anjali', 'Patel', 'anjali.patel31@email.com', '9876543240', 'Vadodara', 'India'),
('Ritika', 'Shah', 'ritika.shah32@email.com', '9876543241', 'Rajkot', 'India'),
('Mohit', 'Josan', 'mohit.josan33@email.com', '9876543242', 'Hisar', 'India'),
('Harsh', 'Rawat', 'harsh.rawat34@email.com', '9876543243', 'Rohtak', 'India'),
('Deepak', 'Soni', 'deepak.soni35@email.com', '9876543244', 'Udaipur', 'India'),
('Payal', 'Solanki', 'payal.solanki36@email.com', '9876543245', 'Jodhpur', 'India'),
('Vikas', 'Shekhawat', 'vikas.shekhawat37@email.com', '9876543246', 'Ajmer', 'India'),
('Kajal', 'Nanda', 'kajal.nanda38@email.com', '9876543247', 'Noida', 'India'),
('Saurabh', 'Bhardwaj', 'saurabh.bhardwaj39@email.com', '9876543248', 'Gurgaon', 'India'),
('Priya', 'Rana', 'priya.rana40@email.com', '9876543249', 'Faridabad', 'India');

INSERT INTO Customers (FirstName, LastName, Email, Phone, City, Country)
VALUES 
('Nisha', 'Sehgal', 'nisha.sehgal41@email.com', '9876543250', 'Panipat', 'India'),
('Ankita', 'Arora', 'ankita.arora42@email.com', '9876543251', 'Yamunanagar', 'India'),
('Akash', 'Grover', 'akash.grover43@email.com', '9876543252', 'Haridwar', 'India'),
('Bhavna', 'Taneja', 'bhavna.taneja44@email.com', '9876543253', 'Saharanpur', 'India'),
('Ravi', 'Chugh', 'ravi.chugh45@email.com', '9876543254', 'Meerut', 'India'),
('Sunita', 'Bhatia', 'sunita.bhatia46@email.com', '9876543255', 'Ghaziabad', 'India'),
('Ajay', 'Mathur', 'ajay.mathur47@email.com', '9876543256', 'Moradabad', 'India'),
('Gaurav', 'Sinha', 'gaurav.sinha48@email.com', '9876543257', 'Bilaspur', 'India'),
('Komal', 'Bhatt', 'komal.bhatt49@email.com', '9876543258', 'Shimla', 'India'),
('Hemant', 'Kapadia', 'hemant.kapadia50@email.com', '9876543259', 'Silchar', 'India');


