create database Employe_Payroll_management_systeam;
use Employe_Payroll_management_systeam;
create table staff(
Emp_ID int primary key,
Name varchar(60),
Account_number varchar(50),
mobile_number varchar(10)
);
ALTER TABLE staff
ADD Pancard_number VARCHAR(20);
INSERT INTO staff (Emp_ID, Name, Account_number, mobile_number, Pancard_number) VALUES
(1, 'Amit Kumar', 1234567890, '9876543210', 'ABCDE1234F'),
(2, 'Rajesh Singh', 2345678901, '8765432109', 'BCDEF2345G'),
(3, 'Suresh Verma', 3456789012, '7654321098', 'CDEFG3456H'),
(4, 'Anita Sharma', 4567890123, '6543210987', 'DEFGH4567I'),
(5, 'Neha Gupta', 5678901234, '5432109876', 'EFGHI5678J'),
(6, 'Vikram Rao', 6789012345, '4321098765', 'FGHIJ6789K'),
(7, 'Pooja Mehta', 7890123456, '3210987654', 'GHIJK7890L'),
(8, 'Rahul Joshi', 8901234567, '2109876543', 'HIJKL8901M'),
(9, 'Sanjay Das', 9012345678, '1098765432', 'IJKLM9012N'),
(10, 'Kiran Yadav', 1122334455, '9988776655', 'JKLMN0123O'),
(11, 'Swati Agarwal', 2233445566, '8877665544', 'KLMNO1234P'),
(12, 'Deepak Malhotra', 3344556677, '7766554433', 'LMNOP2345Q'),
(13, 'Sunil Patil', 4455667788, '6655443322', 'MNOPQ3456R'),
(14, 'Anjali Kapoor', 5566778899, '5544332211', 'NOPQR4567S'),
(15, 'Manoj Tiwari', 6677889900, '4433221100', 'OPQRS5678T'),
(16, 'Geeta Reddy', 7788990011, '3322110099', 'PQRST6789U'),
(17, 'Ashok Nair', 8899001122, '2211009988', 'QRSTU7890V'),
(18, 'Shreya Dutta', 9900112233, '1100998877', 'RSTUV8901W'),
(19, 'Ravi Chawla', 1011121314, '9988665544', 'STUVW9012X'),
(20, 'Kavita Arora', 1213141516, '8877554433', 'TUVWX0123Y'),
(21, 'Arun Bhaskar', 1314151617, '7766443322', 'UVWXY1234Z'),
(22, 'Megha Bansal', 1415161718, '6655332211', 'VWXYZ2345A'),
(23, 'Karthik Iyer', 1516171819, '5544221100', 'WXYZA3456B'),
(24, 'Sonia Rajan', 1617181920, '4433110099', 'XYZAB4567C'),
(25, 'Rohan Kapoor', 1718192021, '3322009988', 'YZABC5678D'),
(26, 'Sneha Pillai', 1819202122, '2211008877', 'ZABCD6789E'),
(27, 'Vivek Khanna', 1920212223, '1100997766', 'ABCDE7890F'),
(28, 'Divya Sharma', 2021222324, '9988776655', 'BCDEF8901G'),
(29, 'Siddharth Singh', 2122232425, '8877665544', 'CDEFG9012H'),
(30, 'Pallavi Nair', 2223242526, '7766554433', 'DEFGH0123I');

create table Department(
Department_ID int primary key,
Name varchar(30)
);
INSERT INTO Department (Department_ID, Name) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Marketing'),
(4, 'Sales'),
(5, 'Customer Support'),
(6, 'IT'),
(7, 'Engineering'),
(8, 'Research & Development'),
(9, 'Operations'),
(10, 'Administration'),
(11, 'Legal'),
(12, 'Procurement'),
(13, 'Security'),
(14, 'Quality Assurance'),
(15, 'Production'),
(16, 'Maintenance'),
(17, 'Public Relations'),
(18, 'Training & Development'),
(19, 'Audit'),
(20, 'Logistics'),
(21, 'Data Analytics'),
(22, 'Business Development'),
(23, 'Compliance'),
(24, 'Risk Management'),
(25, 'Medical & Health'),
(26, 'Event Management'),
(27, 'Content & Media'),
(28, 'Customer Success'),
(29, 'Software Development'),
(30, 'Network Operations');

create table Salary(
 Salary_ID int primary key,
 Department_ID int,
 Monthly_Salary varchar(50),
 Annual varchar(50),
 Bonus varchar(50),
constraint FK_department foreign key(Department_ID) references department (Department_ID)
);
INSERT INTO Salary (Salary_ID, Department_ID, Monthly_Salary, Annual, Bonus) VALUES
(1, 1, 50000, 600000, 50000),
(2, 2, 55000, 660000, 55000),
(3, 3, 48000, 576000, 48000),
(4, 4, 47000, 564000, 47000),
(5, 5, 52000, 624000, 52000),
(6, 6, 60000, 720000, 60000),
(7, 7, 75000, 900000, 75000),
(8, 8, 68000, 816000, 68000),
(9, 9, 49000, 588000, 49000),
(10, 10, 46000, 552000, 46000),
(11, 11, 65000, 780000, 65000),
(12, 12, 62000, 744000, 62000),
(13, 13, 43000, 516000, 43000),
(14, 14, 57000, 684000, 57000),
(15, 15, 71000, 852000, 71000),
(16, 16, 48000, 576000, 48000),
(17, 17, 53000, 636000, 53000),
(18, 18, 49000, 588000, 49000),
(19, 19, 63000, 756000, 63000),
(20, 20, 58000, 696000, 58000),
(21, 21, 72000, 864000, 72000),
(22, 22, 54000, 648000, 54000),
(23, 23, 51000, 612000, 51000),
(24, 24, 66000, 792000, 66000),
(25, 25, 69000, 828000, 69000),
(26, 26, 47000, 564000, 47000),
(27, 27, 59000, 708000, 59000),
(28, 28, 55000, 660000, 55000),
(29, 29, 76000, 912000, 76000),
(30, 30, 62000, 744000, 62000);

create table Leave_record(
Leave_ID int primary key,
emp_ID int,
Leave_date date,
Leave_type varchar(30),
constraint FK_emp foreign key(Emp_ID) references staff(EMP_ID)
);
INSERT INTO Leave_record (Leave_ID, Emp_ID, Leave_date, Leave_type) VALUES
(1, 1, '2024-01-05', 'Sick Leave'),
(2, 2, '2024-01-10', 'Casual Leave'),
(3, 3, '2024-01-15', 'Vacation'),
(4, 4, '2024-01-20', 'Sick Leave'),
(5, 5, '2024-02-05', 'Casual Leave'),
(6, 6, '2024-02-10', 'Maternity Leave'),
(7, 7, '2024-02-15', 'Paternity Leave'),
(8, 8, '2024-02-20', 'Sick Leave'),
(9, 9, '2024-03-05', 'Casual Leave'),
(10, 10, '2024-03-10', 'Vacation'),
(11, 11, '2024-03-15', 'Sick Leave'),
(12, 12, '2024-03-20', 'Personal Leave'),
(13, 13, '2024-04-05', 'Casual Leave'),
(14, 14, '2024-04-10', 'Sick Leave'),
(15, 15, '2024-04-15', 'Bereavement Leave'),
(16, 16, '2024-04-20', 'Vacation'),
(17, 17, '2024-05-05', 'Casual Leave'),
(18, 18, '2024-05-10', 'Medical Leave'),
(19, 19, '2024-05-15', 'Sick Leave'),
(20, 20, '2024-05-20', 'Casual Leave'),
(21, 21, '2024-06-05', 'Vacation'),
(22, 22, '2024-06-10', 'Sick Leave'),
(23, 23, '2024-06-15', 'Casual Leave'),
(24, 24, '2024-06-20', 'Personal Leave'),
(25, 25, '2024-07-05', 'Vacation'),
(26, 26, '2024-07-10', 'Casual Leave'),
(27, 27, '2024-07-15', 'Sick Leave'),
(28, 28, '2024-07-20', 'Maternity Leave'),
(29, 29, '2024-08-05', 'Casual Leave'),
(30, 30, '2024-08-10', 'Vacation');

create table pay_roll(
payroll_id int primary key,
emp_ID int,
Department_ID int,
salary_ID int,
Leave_ID int,
constraint FK_employer foreign key(emp_id)references staff(emp_ID),
constraint FK_dep foreign key(Department_ID)references department(Department_ID),
constraint FK_salary foreign key(Salary_ID)references salary(Salary_ID),
constraint Fk_leave foreign key(Leave_id)references leave_record(leave_id)
);
INSERT INTO pay_roll (payroll_id, emp_ID, Department_ID, salary_ID, Leave_ID) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5),
(6, 6, 6, 6, 6),
(7, 7, 7, 7, 7),
(8, 8, 8, 8, 8),
(9, 9, 9, 9, 9),
(10, 10, 10, 10, 10),
(11, 11, 11, 11, 11),
(12, 12, 12, 12, 12),
(13, 13, 13, 13, 13),
(14, 14, 14, 14, 14),
(15, 15, 15, 15, 15),
(16, 16, 16, 16, 16),
(17, 17, 17, 17, 17),
(18, 18, 18, 18, 18),
(19, 19, 19, 19, 19),
(20, 20, 20, 20, 20),
(21, 21, 21, 21, 21),
(22, 22, 22, 22, 22),
(23, 23, 23, 23, 23),
(24, 24, 24, 24, 24),
(25, 25, 25, 25, 25),
(26, 26, 26, 26, 26),
(27, 27, 27, 27, 27),
(28, 28, 28, 28, 28),
(29, 29, 29, 29, 29),
(30, 30, 30, 30, 30);



DELIMITER //
CREATE PROCEDURE AddNewEmployee(
    IN p_Emp_ID INT,
    IN p_Name VARCHAR(60),
    IN p_Account_number VARCHAR(50),
    IN p_mobile_number VARCHAR(10),
    IN p_Pancard_number VARCHAR(20)
)
BEGIN
    INSERT INTO staff (Emp_ID, Name, Account_number, mobile_number, Pancard_number)
    VALUES (p_Emp_ID, p_Name, p_Account_number, p_mobile_number, p_Pancard_number);
END //
DELIMITER ;


To Update Mobile Number
DELIMITER //
CREATE PROCEDURE UpdateMobileNumber(
    IN p_Emp_ID INT,
    IN p_new_mobile VARCHAR(10)
)
BEGIN
    UPDATE staff
    SET mobile_number = p_new_mobile
    WHERE Emp_ID = p_Emp_ID;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE GetLeaveByEmployee(
    IN p_Emp_ID INT
)
BEGIN
    SELECT * FROM leave_record
    WHERE Emp_ID = p_Emp_ID;
END //
DELIMITER ;

Count how many types of leaves have been taken by each employee.
SELECT s.Emp_ID, s.Name, COUNT(DISTINCT l.Leave_type) AS Types_of_Leaves
FROM staff s
JOIN leave_record l ON s.Emp_ID = l.Emp_ID
GROUP BY s.Emp_ID, s.Name;

Get Full Payroll Report with Joins
DELIMITER //
CREATE PROCEDURE GetFullPayrollReport()
BEGIN
    SELECT
        s.Emp_ID,
        s.Name,
        d.Name AS Department,
        sal.Monthly_Salary,
        sal.Annual,
        sal.Bonus,
        l.Leave_type,
        l.Leave_date
    FROM pay_roll p
    JOIN staff s ON p.Emp_ID = s.Emp_ID
    JOIN department d ON p.Department_ID = d.Department_ID
    JOIN salary sal ON p.salary_ID = sal.Salary_ID
    JOIN leave_record l ON p.Leave_ID = l.Leave_ID;
END //
DELIMITER ;




