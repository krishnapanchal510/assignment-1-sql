
CREATE TABLE Trains 
    (train_id INT PRIMARY KEY,
    train_name VARCHAR(100) NOT NULL,
    source VARCHAR(50) NOT NULL,
    destination VARCHAR(50) NOT NULL,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL,
    distance_km INT CHECK (distance_km > 0))

INSERT INTO Trains VALUES
(101, 'Shatabdi Exp', 'Delhi', 'Bhopal', '06:00', '14:00', 700),
(102, 'Rajdhani Exp', 'Delhi', 'Mumbai', '16:00', '08:00', 1400),
(103, 'Duronto Exp', 'Mumbai', 'Chennai', '20:00', '10:00', 1300),
(104, 'Garib Rath', 'Kolkata', 'Delhi', '12:00', '06:00', 1500),
(105, 'Chennai Exp', 'Chennai', 'Delhi', '08:00', '22:00', 2200),
(106, 'Howrah Exp', 'Howrah', 'Mumbai', '10:00', '20:00', 1960),
(107, 'Nizamuddin Exp', 'Delhi', 'Hyderabad', '15:00', '05:00', 1675),
(108, 'Goa Exp', 'Mumbai', 'Goa', '07:00', '15:00', 589),
(109, 'Kashi Exp', 'Varanasi', 'Delhi', '05:30', '13:30', 820),
(110, 'Jammu Tawi Exp', 'Delhi', 'Jammu', '18:00', '07:00', 670),
(111, 'Karnataka Exp', 'Bangalore', 'Delhi', '21:00', '14:00', 2360),
(112, 'Kerala Exp', 'Trivandrum', 'Delhi', '11:00', '22:00', 3045),
(113, 'Punjab Mail', 'Mumbai', 'Firozpur', '19:00', '09:00', 1925),
(114, 'Tamil Nadu Exp', 'Chennai', 'Delhi', '06:30', '20:30', 2180),
(115, 'Andhra Exp', 'Hyderabad', 'Delhi', '06:00', '19:00', 1700),
(116, 'Odisha Sampark', 'Bhubaneswar', 'Delhi', '14:00', '08:00', 1725),
(117, 'Maharashtra Exp', 'Mumbai', 'Nagpur', '09:00', '18:00', 840),
(118, 'Saurashtra Exp', 'Rajkot', 'Mumbai', '06:00', '14:00', 730),
(119, 'Utkal Exp', 'Puri', 'Delhi', '20:00', '12:00', 1850),
(120, 'Konark Exp', 'Mumbai', 'Bhubaneswar', '22:00', '14:00', 1950),
(121, 'Kaveri Exp', 'Mysore', 'Chennai', '23:00', '07:00', 500),
(122, 'Malwa Exp', 'Indore', 'Delhi', '21:00', '08:00', 850),
(123, 'Netravati Exp', 'Mumbai', 'Mangalore', '11:00', '20:00', 720),
(124, 'Ganga Kaveri Exp', 'Chennai', 'Patna', '16:00', '08:00', 2000),
(125, 'Deccan Exp', 'Pune', 'Mumbai', '07:00', '12:00', 192),
(126, 'Shatabdi Kolkata', 'Kolkata', 'Patna', '05:00', '11:00', 535),
(127, 'Sealdah Exp', 'Sealdah', 'Delhi', '15:00', '09:00', 1460),
(128, 'Sundar Exp', 'Bangalore', 'Hyderabad', '18:00', '06:00', 650),
(129, 'Ajmer Exp', 'Ajmer', 'Delhi', '12:00', '21:00', 500)


CREATE TABLE Passengers 
    (passenger_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    gender CHAR(1) CHECK (gender IN ('M','F')),
    city VARCHAR(50))
insert into passengers values
(1, 'Ramesh', 45, 'M', 'Delhi'),
(2, 'Sita', 32, 'F', 'Mumbai'),
(3, 'Arjun', 28, 'M', 'Bhopal'),
(4, 'Priya', 19, 'F', 'Chennai'),
(5, 'Anil', 52, 'M', 'Kolkata'),
(6, 'Neha', 27, 'F', 'Delhi'),
(7, 'Vikram', 34, 'M', 'Mumbai'),
(8, 'Sunita', 40, 'F', 'Kolkata'),
(9, 'Rajesh', 50, 'M', 'Chennai'),
(10, 'Meena', 22, 'F', 'Bangalore'),
(11, 'Arvind', 29, 'M', 'Hyderabad'),
(12, 'Kiran', 31, 'M', 'Pune'),
(13, 'Lakshmi', 36, 'F', 'Delhi'),
(14, 'Deepak', 48, 'M', 'Patna'),
(15, 'Swati', 25, 'F', 'Jaipur'),
(16, 'Harish', 55, 'M', 'Varanasi'),
(17, 'Rohit', 19, 'M', 'Lucknow'),
(18, 'Sneha', 23, 'F', 'Ahmedabad'),
(19, 'Manoj', 60, 'M', 'Nagpur'),
(20, 'Kavita', 33, 'F', 'Bhopal'),
(21, 'Ajay', 42, 'M', 'Indore'),
(22, 'Ritu', 28, 'F', 'Mysore'),
(23, 'Pankaj', 37, 'M', 'Goa'),
(24, 'Divya', 30, 'F', 'Surat'),
(25, 'Suresh', 44, 'M', 'Ranchi'),
(26, 'Pooja', 26, 'F', 'Bhubaneswar'),
(27, 'Nitin', 32, 'M', 'Kanpur'),
(28, 'Shalini', 39, 'F', 'Chandigarh'),
(29, 'Gaurav', 21, 'M', 'Shimla'),
(30, 'Anita', 47, 'F', 'Trivandrum')


CREATE TABLE Reservations 
    (res_id INT PRIMARY KEY,
    passenger_id INT,
    train_id INT,
    travel_date DATE NOT NULL,
    class VARCHAR(10) CHECK (class IN ('Sleeper','AC1','AC2','AC3')),
    fare DECIMAL(10,2) CHECK (fare >= 0),
    status VARCHAR(20) CHECK (status IN ('Confirmed','Waiting','Cancelled')),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (train_id) REFERENCES Trains(train_id))

INSERT INTO Reservations VALUES

(201, 1, 101, '2025-09-01', 'Sleeper', 500, 'Confirmed'),
(202, 2, 102, '2025-09-05', 'AC2', 1800, 'Confirmed'),
(203, 3, 101, '2025-09-01', 'Sleeper', 500, 'Waiting'),
(204, 4, 103, '2025-09-07', 'AC3', 1200, 'Confirmed'),
(205, 5, 104, '2025-09-10', 'Sleeper', 600, 'Cancelled'),
(206, 6, 105, '2025-09-12', 'AC1', 3500, 'Confirmed'),
(207, 7, 106, '2025-09-13', 'AC2', 2200, 'Waiting'),
(208, 8, 107, '2025-09-14', 'Sleeper', 950, 'Confirmed'),
(209, 9, 108, '2025-09-15', 'AC3', 1200, 'Cancelled'),
(210, 10, 109, '2025-09-16', 'AC2', 1400, 'Confirmed'),
(211, 11, 110, '2025-09-17', 'Sleeper', 600, 'Confirmed'),
(212, 12, 111, '2025-09-18', 'AC1', 3800, 'Confirmed'),
(213, 13, 112, '2025-09-19', 'AC3', 2800, 'Waiting'),
(214, 14, 113, '2025-09-20', 'AC2', 2100, 'Confirmed'),
(215, 15, 114, '2025-09-21', 'Sleeper', 950, 'Confirmed'),
(216, 16, 115, '2025-09-22', 'AC2', 1650, 'Cancelled'),
(217, 17, 116, '2025-09-23', 'Sleeper', 800, 'Confirmed'),
(218, 18, 117, '2025-09-24', 'AC3', 1200, 'Confirmed'),
(219, 19, 118, '2025-09-25', 'AC1', 2500, 'Confirmed'),
(220, 20, 119, '2025-09-26', 'Sleeper', 1100, 'Waiting'),
(221, 21, 120, '2025-09-27', 'AC2', 1900, 'Confirmed'),
(222, 22, 121, '2025-09-28', 'AC3', 750, 'Confirmed'),
(223, 23, 122, '2025-09-29', 'Sleeper', 670, 'Cancelled'),
(224, 24, 123, '2025-09-30', 'AC2', 1100, 'Confirmed'),
(225, 25, 124, '2025-10-01', 'AC1', 3100, 'Confirmed'),
(226, 26, 125, '2025-10-02', 'Sleeper', 250, 'Waiting'),
(227, 27, 126, '2025-10-03', 'AC3', 900, 'Confirmed'),
(228, 28, 127, '2025-10-04', 'AC2', 1750, 'Confirmed'),
(229, 29, 128, '2025-10-05', 'Sleeper', 500, 'Confirmed'),
(230, 30, 129, '2025-10-06', 'AC2', 800, 'Cancelled')

-- 1. List all trains running from Delhi
Select * From Trains 
Where source = 'Delhi'

-- 2. Passengers above 40 years
Select * From Passengers
Where age > 40

-- 3. Total number of reservations
Select count(*) as TotalReservations 
from Reservations

-- 4. Count Confirmed reservations
Select count(*) as ConfirmedCount
From Reservations 
Where status = 'Confirmed'

-- 5. Average fare per train
Select train_id, avg(fare) as AvgFare
From Reservations
Group by train_id

-- 6. Reservations ordered by fare DESC
Select * from Reservations 
Order by fare desc

-- 7. Passengers who booked AC2 or AC3
Select distinct p.name
from Passengers p
join Reservations r on p.passenger_id = r.passenger_id
Where r.class IN ('AC2','AC3')

-- 8. Total revenue per train (Confirmed only)
Select train_id, sum(fare) as Revenue
From Reservations
Where status = 'Confirmed'
Group by train_id

-- 9. Train with maximum distance
Select top 1 * from Trains 
order by distance_km desc

-- 10. Number of male and female passengers
Select gender, count(*) AS Count
from Passengers
Group by gender

-- 11. Passenger names booked Sleeper class
Select Distinct p.name
from Passengers p
join Reservations r on p.passenger_id = r.passenger_id
where r.class = 'Sleeper'

-- 12. Reservations per city
SELECT p.city, COUNT(r.res_id) AS ReservationCount
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
GROUP BY p.city

-- 13. Train name and passenger count
SELECT t.train_name, COUNT(r.passenger_id) AS PassengerCount
FROM Trains t
JOIN Reservations r ON t.train_id = r.train_id
GROUP BY t.train_name
ORDER BY PassengerCount DESC

-- 14. Average age of Confirmed passengers
SELECT AVG(p.age) AS AvgAge
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
WHERE r.status = 'Confirmed'

-- 15. Reservations per travel_date
SELECT travel_date, COUNT(*) AS ReservationCount
FROM Reservations
GROUP BY travel_date

-- 16. Reservations with fare > 1000
SELECT * FROM Reservations WHERE fare > 1000

-- 17. Passengers living in Delhi or Mumbai
SELECT * FROM Passengers WHERE city IN ('Delhi','Mumbai')

-- 18. Trains with distance > 1200 km
SELECT * FROM Trains WHERE distance_km > 1200

-- 19. Reservations not Cancelled
SELECT * FROM Reservations WHERE status <> 'Cancelled'

-- 20. Trains with "Exp" in name
SELECT * FROM Trains WHERE train_name LIKE '%Exp%'


-- Q21. List all passengers ordered by age DESC
SELECT * FROM Passengers ORDER BY age DESC

-- Q22. Reservations sorted by travel_date (earliest first)
SELECT * FROM Reservations ORDER BY travel_date ASC

-- Q23. Trains ordered by distance (longest route first)
SELECT * FROM Trains ORDER BY distance_km DESC

-- Q24. Passengers ordered by name alphabetically
SELECT * FROM Passengers ORDER BY name ASC

-- Q25. Reservations ordered by class then fare
SELECT * FROM Reservations ORDER BY class, fare

-- Q26. Count passengers per city
SELECT city, COUNT(*) AS PassengerCount
FROM Passengers GROUP BY city

-- Q27. Total fare from Confirmed reservations
SELECT SUM(fare) AS TotalFare
FROM Reservations WHERE status = 'Confirmed'

-- Q28. Min, Max, Avg age of passengers
SELECT MIN(age) AS MinAge, MAX(age) AS MaxAge, AVG(age) AS AvgAge
FROM Passengers

-- Q29. Highest fare in Sleeper class
SELECT MAX(fare) AS HighestSleeperFare
FROM Reservations WHERE class = 'Sleeper'

-- Q30. Average fare per travel_date
SELECT travel_date, AVG(fare) AS AvgFare
FROM Reservations GROUP BY travel_date

-- Q31. Each class and total reservations
SELECT class, COUNT(*) AS ReservationCount
FROM Reservations GROUP BY class

-- Q32. Trains with more than 1 reservation
SELECT train_id, COUNT(*) AS ReservationCount
FROM Reservations GROUP BY train_id HAVING COUNT(*) > 1

-- Q33. Cities with more than 1 passenger
SELECT city, COUNT(*) AS PassengerCount
FROM Passengers GROUP BY city HAVING COUNT(*) > 1

-- Q34. Gender-wise average age
SELECT gender, AVG(age) AS AvgAge
FROM Passengers GROUP BY gender

-- Q35. Passengers who booked more than 1 ticket
SELECT p.name, COUNT(r.res_id) AS TicketCount
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
GROUP BY p.name HAVING COUNT(r.res_id) > 1

-- Q36. Passenger name, train name, fare
SELECT p.name, t.train_name, r.fare
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
JOIN Trains t ON r.train_id = t.train_id

-- Q37. Passengers and train name (if any)
SELECT p.name, t.train_name
FROM Passengers p
LEFT JOIN Reservations r ON p.passenger_id = r.passenger_id
LEFT JOIN Trains t ON r.train_id = t.train_id

-- Q38. All trains and passenger count
SELECT t.train_name, COUNT(r.passenger_id) AS PassengerCount
FROM Trains t
LEFT JOIN Reservations r ON t.train_id = r.train_id
GROUP BY t.train_name

-- Q39. Passengers who booked Rajdhani Exp
SELECT DISTINCT p.name
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
JOIN Trains t ON r.train_id = t.train_id
WHERE t.train_name = 'Rajdhani Exp'

-- Q40. Passenger names with travel_date and status
SELECT p.name, r.travel_date, r.status
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id

-- Q41. Top 2 highest fare reservations
SELECT TOP 2 * FROM Reservations ORDER BY fare DESC

-- Q42. Train with lowest average fare
SELECT TOP 1 train_id, AVG(fare) AS AvgFare
FROM Reservations GROUP BY train_id ORDER BY AvgFare ASC

-- Q43. Train(s) where total distance travelled > 1000
SELECT t.train_name, SUM(t.distance_km) AS TotalDistance
FROM Reservations r
JOIN Trains t ON r.train_id = t.train_id
GROUP BY t.train_name HAVING SUM(t.distance_km) > 1000

-- Q44. Passengers with status Waiting
SELECT p.name
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
WHERE r.status = 'Waiting'

-- Q45. Passenger(s) who paid maximum fare
SELECT p.name, r.fare
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
WHERE r.fare = (SELECT MAX(fare) FROM Reservations)

-- Q46. Passengers aged between 20 and 40
SELECT * FROM Passengers WHERE age BETWEEN 20 AND 40

-- Q47. Trains starting from Kolkata or Chennai
SELECT * FROM Trains WHERE source IN ('Kolkata','Chennai')

-- Q48. Reservations after 2025-09-05
SELECT * FROM Reservations WHERE travel_date > '2025-09-05'

-- Q49. Passengers whose name starts with A
SELECT * FROM Passengers WHERE name LIKE 'A%'

-- Q50. Passengers whose city is NOT Delhi
SELECT * FROM Passengers WHERE city <> 'Delhi'


-- Q51. 3 youngest passengers
SELECT TOP 3 * FROM Passengers ORDER BY age ASC

-- Q52. 2 longest-distance trains
SELECT TOP 2 * FROM Trains ORDER BY distance_km DESC

-- Q53. 5 most expensive reservations
SELECT TOP 5 * FROM Reservations ORDER BY fare DESC

-- Q54. Trains in alphabetical order
SELECT * FROM Trains ORDER BY train_name ASC

-- Q55. Passengers sorted by age (youngest first)
SELECT * FROM Passengers ORDER BY age ASC

-- Q56. Average fare of all reservations
SELECT AVG(fare) AS AvgFare FROM Reservations

-- Q57. Count male passengers
SELECT COUNT(*) AS MaleCount FROM Passengers WHERE gender = 'M'

-- Q58. Maximum distance among trains
SELECT MAX(distance_km) AS MaxDistance FROM Trains

-- Q59. Total Sleeper class reservations
SELECT COUNT(*) AS SleeperCount FROM Reservations WHERE class = 'Sleeper'

-- Q60. Total fare paid by Mumbai passengers
SELECT SUM(r.fare) AS TotalFare
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
WHERE p.city = 'Mumbai'

-- Q61. Reservations per status
SELECT status, COUNT(*) AS Count
FROM Reservations GROUP BY status

-- Q62. Passengers per gender
SELECT gender, COUNT(*) AS Count
FROM Passengers GROUP BY gender

-- Q63. Average fare per class
SELECT class, AVG(fare) AS AvgFare
FROM Reservations GROUP BY class

-- Q64. Number of trains per source city
SELECT source, COUNT(*) AS TrainCount
FROM Trains GROUP BY source

-- Q65. Reservations grouped by travel_date
SELECT travel_date, COUNT(*) AS ReservationCount
FROM Reservations GROUP BY travel_date

-- Q66. Passenger name, city, train_name
SELECT p.name, p.city, t.train_name
FROM Passengers p
LEFT JOIN Reservations r ON p.passenger_id = r.passenger_id
LEFT JOIN Trains t ON r.train_id = t.train_id

-- Q67. Reservations with passenger name and status
SELECT p.name, r.status
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id

-- Q68. Train_name and confirmed passengers
SELECT t.train_name, COUNT(r.passenger_id) AS ConfirmedCount
FROM Trains t
JOIN Reservations r ON t.train_id = r.train_id
WHERE r.status = 'Confirmed'
GROUP BY t.train_name

-- Q69. All passengers with train_name (NULL if none)
SELECT p.name, t.train_name
FROM Passengers p
LEFT JOIN Reservations r ON p.passenger_id = r.passenger_id
LEFT JOIN Trains t ON r.train_id = t.train_id

-- Q70. Passengers booked Garib Rath
SELECT DISTINCT p.name
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
JOIN Trains t ON r.train_id = t.train_id
WHERE t.train_name = 'Garib Rath'


-- Q71. Train_id and total fare > 1000
SELECT train_id, SUM(fare) AS TotalFare
FROM Reservations GROUP BY train_id HAVING SUM(fare) > 1000

-- Q72. Source cities with more than 1 train
SELECT source, COUNT(*) AS TrainCount
FROM Trains GROUP BY source HAVING COUNT(*) > 1

-- Q73. Passengers grouped by city where count > 1
SELECT city, COUNT(*) AS PassengerCount
FROM Passengers GROUP BY city HAVING COUNT(*) > 1

-- Q74. Classes earning more than 2000 fare
SELECT class, SUM(fare) AS TotalFare
FROM Reservations GROUP BY class HAVING SUM(fare) > 2000

-- Q75. Trains with at least 2 passengers booked
SELECT train_id, COUNT(passenger_id) AS PassengerCount
FROM Reservations GROUP BY train_id HAVING COUNT(passenger_id) >= 2

-- Q76. Passenger(s) with highest age
SELECT * FROM Passengers WHERE age = (SELECT MAX(age) FROM Passengers)

-- Q77. Train(s) with shortest distance
SELECT * FROM Trains WHERE distance_km = (SELECT MIN(distance_km) FROM Trains)

-- Q78. Reservation(s) with lowest fare
SELECT * FROM Reservations 


