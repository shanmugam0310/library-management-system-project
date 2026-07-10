create database LMS;

use lms;

-- =====================================================================================================================
-- books table and section
-- =====================================================================================================================

create table books(
book_id int , 
book_name varchar(50),
book_genre varchar(30),
book_author varchar(30),
book_publisher varchar(30),
book_edition int,
book_total_copies int ,
book_available_copies int,
book_price decimal(9,2)
);

select * from books;


alter table books
rename column book_price to book_rent ;

INSERT INTO BOOKS (book_id, book_name, book_author, book_genre, book_publisher, book_edition, book_rent, book_total_copies, book_available_copies)
VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 'HarperCollins', 1, 20.00, 5, 5),
(2, 'Atomic Habits', 'James Clear', 'Self Help', 'Penguin', 1, 25.00, 4, 3),
(3, 'Harry Potter and the Sorcerers Stone', 'J.K. Rowling', 'Fantasy', 'Bloomsbury', 2, 30.00, 6, 6),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 'Scribner', 3, 15.00, 3, 2),
(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 'Plata Publishing', 2, 20.00, 4, 4),
(6, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 'Grand Central', 1, 15.00, 3, 3),
(7, 'Deep Work', 'Cal Newport', 'Self Help', 'Grand Central', 1, 22.00, 2, 2),
(8, 'The Da Vinci Code', 'Dan Brown', 'Thriller', 'Doubleday', 2, 25.00, 5, 4),
(9, 'A Brief History of Time', 'Stephen Hawking', 'Science', 'Bantam Books', 1, 20.00, 3, 3),
(10, 'Clean Code', 'Robert C. Martin', 'Technology', 'Prentice Hall', 1, 35.00, 2, 2);

-- =====================================================================================================================
-- members table and sectioon
-- =====================================================================================================================

create table Members(
mem_id int,
memb_name varchar(30),
mem_phone_num varchar(10),
mem_email varchar(30),
mem_address varchar(100),
mem_membership_start date,
mem_membership_end date
);

ALTER TABLE MEMBERS ADD membership_status VARCHAR(10);
alter table members
rename column memb_name to mem_name;

select * from members;

INSERT INTO MEMBERS (mem_id, mem_name, mem_email, mem_phone_num, mem_address, mem_membership_start, mem_membership_end, membership_status)
VALUES
(1, 'Arjun Kumar', 'arjun@gmail.com', '9876543210', 'Chennai', '2025-01-01', '2026-01-01', 'active'),
(2, 'Priya Sharma', 'priya@gmail.com', '9876543211', 'Bangalore', '2025-02-15', '2026-02-15', 'active'),
(3, 'Rahul Verma', 'rahul@gmail.com', '9876543212', 'Mumbai', '2025-03-10', '2026-03-10', 'active'),
(4, 'Sneha Reddy', 'sneha@gmail.com', '9876543213', 'Hyderabad', '2025-04-01', '2026-04-01', 'active'),
(5, 'Vikram Singh', 'vikram@gmail.com', '9876543214', 'Delhi', '2024-06-01', '2025-06-01', 'expired'),
(6, 'Ananya Iyer', 'ananya@gmail.com', '9876543215', 'Chennai', '2025-05-20', '2026-05-20', 'active'),
(7, 'Karthik Raja', 'karthik@gmail.com', '9876543216', 'Coimbatore', '2025-06-01', '2026-06-01', 'active'),
(8, 'Meera Nair', 'meera@gmail.com', '9876543217', 'Kochi', '2024-07-15', '2025-07-15', 'expired'),
(9, 'Aditya Patel', 'aditya@gmail.com', '9876543218', 'Ahmedabad', '2025-08-01', '2026-08-01', 'active'),
(10, 'Divya Lakshmi', 'divya@gmail.com', '9876543219', 'Chennai', '2025-09-01', '2026-09-01', 'active');

-- =====================================================================================================================
-- staff table and section
-- =====================================================================================================================

create table staff(
staff_id int,
staff_name varchar(30),
staff_role varchar(20),
staff_phone_num varchar(10),
staff_email varchar(30),
staff_address varchar(100),
staff_join_date date,
staff_salary decimal(9,2)
);

select * from staff;

INSERT INTO STAFF (staff_id, staff_name, staff_role, staff_phone_num, staff_email, staff_address, staff_join_date, staff_salary)
VALUES
(1, 'Ramesh Kumar', 'Head Librarian', '9876540001', 'ramesh@library.com', 'Chennai', '2020-01-15', 45000.00),
(2, 'Sunita Rao', 'Librarian', '9876540002', 'sunita@library.com', 'Bangalore', '2021-03-10', 35000.00),
(3, 'Manoj Pillai', 'Librarian', '9876540003', 'manoj@library.com', 'Coimbatore', '2021-06-01', 35000.00),
(4, 'Kavitha Nair', 'Assistant', '9876540004', 'kavitha@library.com', 'Hyderabad', '2022-08-15', 25000.00),
(5, 'Suresh Babu', 'Assistant', '9876540005', 'suresh@library.com', 'Chennai', '2023-01-10', 25000.00);



