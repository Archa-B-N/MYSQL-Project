
CREATE DATABASE library;
USE library;

-- Branch Table

CREATE TABLE Branch (
  Branch_no INT PRIMARY KEY,
  Manager_Id INT,
  Branch_address VARCHAR(255),
  Contact_no VARCHAR(20)
);

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) 
VALUES 
(1, 101, '123 MG Road, Bangalore', '080-12345678'),
(2, 102, '456 CMH Road, Indiranagar, Bangalore', '080-98765432'),
(3, 103, '789 NH 17, Mangalore', '0824-55512345'),
(4, 104, '901 Residency Road, Mysore', '0821-9998888');

 SELECT * FROM Branch;
 
-- Employee Table

CREATE TABLE Employee (
  Emp_Id INT PRIMARY KEY,
  Emp_name VARCHAR(255),
  Position VARCHAR(100),
  Salary DECIMAL(10,2),
  Branch_no INT,
  FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES
(101, 'Rahul Sharma', 'Manager', 60000.00, 1),
(102, 'Priya Rao', 'Manager', 60000.00, 2),
(103, 'Rajesh Kumar', 'Manager', 60000.00, 3),
(104, 'Nalini Gupta', 'Manager', 60000.00, 4),
(105, 'Amit Mehra', 'Librarian', 40000.00, 1),
(106, 'Sonia Jain', 'Librarian', 40000.00, 1),
(107, 'Rohan Khanna', 'Librarian', 40000.00, 1),
(108, 'Pooja Singh', 'Librarian', 40000.00, 1),
(109, 'Vikram Chandra', 'Librarian', 40000.00, 1),
(110, 'Swati Gupta', 'Librarian', 40000.00, 1),
(111, 'Rakesh Agarwal', 'Librarian', 40000.00, 2),
(112, 'Shreya Dixit', 'Librarian', 40000.00, 2),
(113, 'Sushant Mishra', 'Librarian', 40000.00, 3),
(114, 'Neha Joshi', 'Librarian', 40000.00, 3),
(115, 'Karan Patel', 'Librarian', 40000.00, 4),
(116, 'Ritu Sharma', 'Librarian', 40000.00, 4);


SELECT * FROM Employee;

-- Books Table

CREATE TABLE Books (
  ISBN VARCHAR(20) PRIMARY KEY,
  Book_title VARCHAR(255),
  Category VARCHAR(100),
  Rental_Price DECIMAL(10,2),
  Status VARCHAR(10),
  Author VARCHAR(255),
  Publisher VARCHAR(255)
);

INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
('978-000000101', 'The White Tiger', 'Fiction', 15.00, 'Yes', 'Aravind Adiga', 'HarperCollins'),
('978-000000102', 'The Namesake', 'Fiction', 16.00, 'Yes', 'Jhumpa Lahiri', 'Houghton Mifflin'),
('978-000000103', 'The Brief Wondrous Life of Oscar Wao', 'Fiction', 17.00, 'No', 'Junot Díaz', 'Riverhead Books'),
('978-000000104', 'The Inheritance of Loss', 'Fiction', 16.00, 'Yes', 'Kirán Desai', 'Hamish Hamilton'),
('978-000000105', 'The God of Small Things', 'Fiction', 15.00, 'Yes', 'Arundhati Roy', 'IndiaInk'),
('978-000000106', 'The English Patient', 'Fiction', 27.00, 'Yes', 'Michael Ondaatje', 'Knopf'),
('978-000000107', 'The Kite Runner', 'Fiction', 26.00, 'Yes', 'Khaled Hosseini', 'Riverhead Books'),
('978-000000108', 'The Reluctant Fundamentalist', 'Fiction', 15.00, 'Yes', 'Mohsin Hamid', 'Harcourt'),
('978-000000109', 'The Buddha in the Attic', 'Fiction', 16.00, 'Yes', 'Julie Otsuka', 'Alfred A. Knopf'),
('978-000000110', 'The Lowland', 'Fiction', 17.00, 'No', 'Jhumpa Lahiri', 'Alfred A. Knopf'),
('978-000000111', 'The Casual Vacancy', 'Fiction', 16.00, 'Yes', 'J.K. Rowling', 'Little, Brown'),
('978-000000112', 'The Night Circus', 'Fiction', 27.00, 'Yes', 'Erin Morgenstern', 'Doubleday'),
('978-000000113', 'The Help', 'Fiction', 16.00, 'Yes', 'Kathryn Stockett', 'Amy Einhorn Books'),
('978-000000114', 'The Particular Sadness of Lemon Cake', 'Fiction', 15.00, 'Yes', 'Aimee Bender', 'Doubleday'),
('978-000000115', 'The Amazing Adventures of Kavalier & Clay', 'Fiction', 17.00, 'Yes', 'Michael Chabon', 'Random House'),
('978-000000116', 'India After Gandhi', 'Non-Fiction', 18.00, 'Yes', 'Ramachandra Guha', 'Ecco'),
('978-000000117', 'The Story of My Experiments with Truth', 'Non-Fiction', 16.00, 'Yes', 'Mahatma Gandhi', 'Beacon Press'),
('978-000000118', 'The Discovery of India', 'Non-Fiction', 17.00, 'Yes', 'Jawaharlal Nehru', 'Oxford University Press'),
('978-000000119', 'The End of Power', 'Non-Fiction', 28.00, 'Yes', 'Moisés Naím', 'Basic Books'),
('978-000000120', 'Sapiens: A Brief History of Humankind', 'Non-Fiction', 29.00, 'No', 'Yuval Noah Harari', 'Signal'),
('978-000000121', 'Steve Jobs', 'Non-Fiction', 18.00, 'Yes', 'Walter Isaacson', 'Simon & Schuster'),
('978-000000122', 'Unbroken: A World War II Story of Survival, Resilience, and Redemption', 'Non-Fiction', 9.00, 'No', 'Laura Hillenbrand', 'Random House'),
('978-000000123', 'Just Kids', 'Non-Fiction', 8.00, 'Yes', 'Patti Smith', 'Ecco'),
('978-000000124', 'The Sixth Extinction: An Unnatural History', 'Non-Fiction', 9.00, 'No', 'Elizabeth Kolbert', 'Henry Holt'),
('978-000000125', 'The Emperor of All Maladies', 'Non-Fiction', 8.00, 'Yes', 'Siddhartha Mukherjee', 'Scribner'),
('978-000000126', 'A History of India', 'History', 10.00, 'Yes', 'Romila Thapar', 'Penguin Books'),
('978-000000127', 'The Indians in America', 'History', 9.00, 'No', 'Wilcomb E. Washburn', 'Harper & Row'),
('978-000000128', 'The Mughal Empire', 'History', 26.00, 'Yes', 'John F. Richards', 'Cambridge University Press'),
('978-000000129', 'India: A History', 'History', 9.00, 'No', 'John Keay', 'HarperCollins'),
('978-000000130', 'The Bestseller She Wrote', 'Mystery/Thriller', 8.00, 'Yes', 'Ravi Subramanian', 'Penguin Books'),
('978-000000131', 'Gone Girl', 'Mystery/Thriller', 9.00, 'No', 'Gillian Flynn', 'Crown'),
('978-000000132', 'The Silent Patient', 'Mystery/Thriller', 10.00, 'Yes', 'Alex Michaelides', 'Celadon Books'),
('978-000000133', 'The Girl on the Train', 'Mystery/Thriller', 9.00, 'No', 'Paula Hawkins', 'Riverhead Books'),
('978-000000134', 'The Woman in the Window', 'Mystery/Thriller', 10.00, 'Yes', 'A.J. Finn', 'William Morrow'),
('978-000000135', 'The Couple Next Door', 'Mystery/Thriller', 9.00, 'No', 'Shari Lapena', 'Penguin Books'),
('978-000000136', 'The Last Mrs. Parrish', 'Mystery/Thriller', 30.00, 'Yes', 'Liv Constantine', 'Harper'),
('978-000000137', 'The Wife Between Us', 'Mystery/Thriller', 9.00, 'No', 'Greer Hendricks', 'St. Martin s Press'),
('978-000000138', 'The Hating Game', 'Romance', 8.00, 'Yes', 'Sally Thorne', 'William Morrow'),
('978-000000139', 'The Rosie Project', 'Romance', 9.00, 'No', 'Graeme Simsion', 'Simon & Schuster'),
('978-000000140', 'Eleanor Oliphant is Completely Fine', 'Romance', 20.00, 'Yes', 'Gail Honeyman', 'Penguin Books'),
('978-000000141', 'The Royal We', 'Romance', 9.00, 'No', 'Heather Cocks', 'Grand Central Publishing'),
('978-000000142', 'Attachments', 'Romance', 8.00, 'Yes', 'Rainbow Rowell', 'Dutton'),
('978-000000143', 'The Wedding Date', 'Romance', 29.00, 'Yes', 'Jasmine Guillory', 'Penguin Books'),
('978-000000144', 'The Kiss Quotient', 'Romance', 27.00, 'Yes', 'Helen Hoang', 'Penguin Books'),
('978-000000145', 'Well Met', 'Romance', 9.00, 'No', 'Jen DeLuca', 'Berkley'),
('978-000000146', 'The Seven Husbands of Evelyn Hugo', 'Romance', 9.00, 'Yes', 'Taylor Jenkins Reid', 'Algonquin Books'),
('978-000000147', 'The Song of Achilles', 'Fiction', 8.00, 'Yes', 'Madeline Miller', 'Ecco'),
('978-000000148', 'The Power', 'Science Fiction', 10.00, 'Yes', 'Naomi Alderman', 'Little, Brown'),
('978-000000149', 'The First Fifteen Lives of Harry August', 'Science Fiction', 9.00, 'No', 'Claire North', 'Redhook'),
('978-000000150', 'Circe', 'Fantasy', 8.00, 'Yes', 'Madeline Miller', 'Little, Brown');


SELECT * FROM Books;
select count(*) FROM BOOKS;
-- Customer Table

CREATE TABLE Customer (
  Customer_Id INT PRIMARY KEY,
  Customer_name VARCHAR(255),
  Customer_address VARCHAR(255),
  Reg_date DATE
);

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
(1, 'Rahul Kumar', '123, Mysore Road, Mysore', '2021-01-01'),
(2, 'Priya Sharma', '456, Mangalore Beach, Mangalore', '2021-01-05'),
(3, 'Rohan Gupta', '789, Belgaum Fort, Belgaum', '2021-01-10'),
(4, 'Tanvi Jain', '101, Hubli Main Street, Hubli', '2021-01-15'),
(5, 'Sachin Rao', '202, Gulbarga City, Gulbarga', '2021-01-20'),
(6, 'Nalini Reddy', '303, Shimoga Town, Shimoga', '2021-01-25'),
(7, 'Dinesh Mahesh', '404, Davangere Main Road, Davangere', '2022-01-02'),
(8, 'Ragini Singh', '505, Bellary City, Bellary', '2022-01-05'),
(9, 'Vijay Kumar', '606, Bijapur Fort, Bijapur', '2022-01-10'),
(10, 'Swati Mishra', '707, Hassan Main Street, Hassan', '2022-01-15'),
(11, 'Rakesh Patel', '808, Tumkur Town, Tumkur', '2023-01-01'),
(12, 'Preeti Gupta', '909, Mandya City, Mandya', '2023-01-05'),
(13, 'Sandeep Sharma', '1010, Chikmagalur Coffee Estate, Chikmagalur', '2023-01-10'),
(14, 'Ranjana Devi', '1111, Kolar Gold Fields, Kolar', '2023-01-15'),
(15, 'Manish Jain', '1212, Raichur City, Raichur', '2023-01-20'),
(16, 'Shreya Singh', '1313, Bidar Fort, Bidar', '2023-01-25'),
(17, 'Rahul Mishra', '1414, Gadag Town, Gadag', '2024-01-01'),
(18, 'Priyanka Rao', '1515, Karwar Beach, Karwar', '2024-01-05'),
(19, 'Vikas Kumar', '1616, Sirsi City, Sirsi', '2024-01-10'),
(20, 'Neha Gupta', '1717, Hospet Town, Hospet', '2024-01-15'),
(21, 'Saurabh Singh', '1818, Dharwad Main Street, Dharwad', '2024-01-20'),
(22, 'Rashi Jain', '1919, Udupi Temple, Udupi', '2024-01-25'),
(23, 'Gaurav Patel', '2020, Chitradurga Fort, Chitradurga', '2024-02-01'),
(24, 'Anjali Sharma', '2121, Bagalkot City, Bagalkot', '2024-02-05'),
(25, 'Abhishek Rao', '2222, Ranebennuru Town, Ranebennuru', '2024-02-10'),
(26, 'Kajal Singh', '2323, Haveri Main Street, Haveri', '2024-02-15'),
(27, 'Sunny Kumar', '2424, Yadgir City, Yadgir', '2024-02-20'),
(28, 'Shilpa Gupta', '2525, Koppal Town, Koppal', '2024-02-25'),
(29, 'Rahul Khanna', '2626, Ballari City, Ballari', '2024-03-01'),
(30, 'Aisha Jain', '2727, Vijayapura City, Vijayapura', '2024-03-05'),
(31, 'Siddharth Patel', '2828, Kalaburagi City, Kalaburagi', '2024-03-10'),
(32, 'Nikita Singh', '2929, Bidar Fort, Bidar', '2024-03-15'),
(33, 'Rohan Mishra', '3030, Gadag Town, Gadag', '2024-03-20'),
(34, 'Tanvi Rao', '3131, Karwar Beach, Karwar', '2024-03-25'),
(35, 'Vivek Kumar', '3232, Sirsi City, Sirsi', '2024-04-01'),
(36, 'Priya Gupta', '3333, Hospet Town, Hospet', '2024-04-05'),
(37, 'Saurabh Jain', '3434, Dharwad Main Street, Dharwad', '2024-04-10'),
(38, 'Rashi Singh', '3535, Udupi Temple, Udupi', '2024-04-15'),
(39, 'Gaurav Patel', '3636, Chitradurga Fort, Chitradurga', '2024-04-20'),
(40, 'Anjali Sharma', '3737, Bagalkot City, Bagalkot', '2024-04-25'),
(41, 'Abhishek Rao', '3838, Ranebennuru Town, Ranebennuru', '2024-05-01'),
(42, 'Kajal Singh', '3939, Haveri Main Street, Haveri', '2024-05-05'),
(43, 'Sunny Kumar', '4040, Yadgir City, Yadgir', '2024-05-10'),
(44, 'Shilpa Gupta', '4141, Koppal Town, Koppal', '2024-05-15'),
(45, 'Rahul Khanna', '4242, Ballari City, Ballari', '2024-05-20');

SELECT * FROM Customer;

-- IssueStatus Table

CREATE TABLE IssueStatus (
  Issue_Id INT PRIMARY KEY,
  Issued_cust INT,
  Issued_book_name VARCHAR(255),
  Issue_date DATE,
  Isbn_book VARCHAR(20),
  FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
  FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
(1, 1, 'The White Tiger', '2021-05-20', '978-000000101'),
(2, 4, 'The Namesake', '2021-05-22', '978-000000102'),
(3, 7, 'The Inheritance of Loss', '2022-05-25', '978-000000104'),
(4, 8, 'The God of Small Things', '2022-05-28', '978-000000105'),
(5, 10, 'The Kite Runner', '2022-06-01', '978-000000107'),
(6, 11, 'The Reluctant Fundamentalist', '2023-06-05', '978-000000108'),
(7, 12, 'The Buddha in the Attic', '2023-06-03', '978-000000109'),
(8, 9, 'The Casual Vacancy', '2023-06-08', '978-000000111'),
(9, 13, 'The Night Circus', '2023-06-12', '978-000000112'),
(10, 14, 'The Help', '2023-06-15', '978-000000113'),
(11, 15, 'The Particular Sadness of Lemon Cake', '2023-06-07', '978-000000114'),
(12, 16, 'The Amazing Adventures of Kavalier & Clay', '2023-07-02', '978-000000115'),
(13, 17, 'India After Gandhi', '2024-05-24', '978-000000116'),
(14, 18, 'The Story of My Experiments with Truth', '2024-06-09', '978-000000117'),
(15, 19, 'The Discovery of India', '2024-05-27', '978-000000118'),
(16, 20, 'The End of Power', '2024-06-11', '978-000000119'),
(17, 21, 'Steve Jobs', '2024-06-04', '978-000000121'),
(18, 22, 'Just Kids', '2024-06-13', '978-000000123'),
(19, 23, 'The Emperor of All Maladies', '2024-07-06', '978-000000125'),
(20, 24, 'A History of India', '2024-07-15', '978-000000126'),
(21, 25, 'The Mughal Empire', '2024-07-08', '978-000000128'),
(22, 26, 'The Bestseller She Wrote', '2024-08-17', '978-000000130'),
(23, 27, 'The Silent Patient', '2024-08-19', '978-000000132'),
(24, 28, 'The Woman in the Window', '2024-09-21', '978-000000134'),
(25, 29, 'The Last Mrs. Parrish', '2024-09-23', '978-000000136'),
(26, 30, 'The Hating Game', '2024-09-25', '978-000000138'),
(27, 35, 'Eleanor Oliphant is Completely Fine', '2024-09-27', '978-000000140'),
(28, 39, 'The Power', '2024-09-20', '978-000000148'),
(29, 40, 'The Song of Achilles', '2024-09-29', '978-000000147'),
(30, 45, 'The Kiss Quotient', '2024-09-29', '978-000000144');


SELECT * FROM IssueStatus;



-- ReturnStatus Table

CREATE TABLE ReturnStatus (
Return_Id INT PRIMARY KEY,
Return_cust INT,
Return_book_name VARCHAR(255),
Return_date DATE,
Isbn_book2 VARCHAR(20),
FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES 
(1, 1, 'The White Tiger', '2021-06-01', '978-000000101'),
(2, 4, 'The Namesake', '2021-06-03', '978-000000102'),
(3, 7, 'The Inheritance of Loss', '2022-06-17', '978-000000104'),
(4, 8, 'The God of Small Things', '2022-07-01', '978-000000105'),
(5, 10, 'The Kite Runner', '2022-07-12', '978-000000107'),
(6, 11, 'The Reluctant Fundamentalist', '2023-06-25', '978-000000108'),
(7, 12, 'The Buddha in the Attic', '2023-06-24', '978-000000109'),
(8, 9, 'The Casual Vacancy', '2023-06-24', '978-000000111'),
(9, 13, 'The Night Circus', '2023-07-05', '978-000000112'),
(10, 14, 'The Help', '2023-07-02', '978-000000113'),
(11, 15, 'The Particular Sadness of Lemon Cake', '2023-06-25', '978-000000114'),
(12, 16, 'The Amazing Adventures of Kavalier & Clay', '2023-07-15', '978-000000115'),
(13, 17, 'India After Gandhi', '2024-06-01', '978-000000116'),
(14, 18, 'The Story of My Experiments with Truth', '2024-06-18', '978-000000117'),
(15, 19, 'The Discovery of India', '2024-06-10', '978-000000118'),
(16, 20, 'The End of Power', '2024-06-24', '978-000000119'),
(17, 21, 'Steve Jobs', '2024-06-20', '978-000000121'),
(18, 22, 'Just Kids', '2024-06-23', '978-000000123'),
(19, 23, 'The Emperor of All Maladies', '2024-07-12', '978-000000125'),
(20, 24, 'A History of India', '2024-07-26', '978-000000126'),
(21, 25, 'The Mughal Empire', '2024-07-28', '978-000000128'),
(22, 26, 'The Bestseller She Wrote', '2024-08-29', '978-000000130'),
(23, 27, 'The Silent Patient', '2024-08-28', '978-000000132'),
(24, 28, 'The Woman in the Window', '2024-09-29', '978-000000134'),
(25, 29, 'The Last Mrs. Parrish', '2024-09-30', '978-000000136'),
(26, 30, 'The Hating Game', '2024-09-30', '978-000000138'),
(27, 35, 'Eleanor Oliphant is Completely Fine', '2024-10-01', '978-000000140'),
(28, 39, 'The Power', '2024-10-02', '978-000000148'),
(29, 40, 'The Song of Achilles', '2024-10-03', '978-000000147'),
(30, 45, 'The Kiss Quotient', '2024-10-04', '978-000000144');

SELECT * FROM ReturnStatus;

# 1. Retrieve the book title, category, and rental price of all available books.

SELECT  Book_title, Category, Rental_Price FROM Books WHERE status='yes';


# 2. List the employee names and their respective salaries in descending order of salary.

SELECT  Emp_name, Salary FROM Employee ORDER BY Salary DESC;

#  3. Retrieve the book titles and the corresponding customers who have issued those books. 

SELECT Issued_book_name, (SELECT Customer_Name FROM Customer WHERE Customer_Id = IssueStatus.Issued_cust) AS CustomerName FROM IssueStatus ;

# 4. Display the total count of books in each category.

SELECT Category, COUNT(*) AS Book_Count FROM Books GROUP BY Category;

#  5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

SELECT  Emp_name, Position FROM  Employee WHERE Salary > 50000;

#  6. List the customer names who registered before 2022-01-01 and have not issued any books yet.

SELECT Customer_name FROM Customer WHERE Reg_date < '2022-01-01' AND Customer_Id NOT IN (SELECT Issued_cust FROM IssueStatus);

# 7. Display the branch numbers and the total count of employees in each branch.

SELECT Branch_no, COUNT(*) AS TotalCountOfEmployees FROM Employee GROUP BY Branch_no;

#  8. Display the names of customers who have issued books in the month of June 2023. 

 SELECT Customer_name FROM Customer C JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust WHERE MONTH(Issue_date) = 6 AND YEAR(Issue_date) = 2023;

# 9. Retrieve book_title from book table containing history.

SELECT Book_title FROM Books WHERE Book_title LIKE '%history%';

#  10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees 

SELECT Branch_no, COUNT(*) AS TotalCountOfEmployees FROM Employee GROUP BY Branch_no HAVING COUNT(*)>5;

# 11. Retrieve the names of employees who manage branches and their respective branch addresses. 

SELECT E.Emp_name, B.Branch_address FROM Employee E JOIN Branch B ON E.Branch_no = B.Branch_no WHERE E.Position = 'Manager';

# 12. Display the names of customers who have issued books with a rental price higher than Rs. 25. 

SELECT DISTINCT C.Customer_name 
FROM Customer C 
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust 
JOIN Books B ON I.Isbn_book = B.ISBN 
WHERE B.Rental_Price > 25;



