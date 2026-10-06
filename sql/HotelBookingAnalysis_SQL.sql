CREATE DATABASE HotelBookingAnalysis

USE HotelBookingAnalysis

-- Check if our dataset was imported correctly
SELECT TOP 10 *
FROM [hotel_bookings_cleaned-2]

SELECT COUNT(*) AS total_records
FROM [hotel_bookings_cleaned-2];
-- The dataset was successfully imported into SQL Server and contains 87237 booking records and 36 fields.

-- Question 1: Which room types generate the highest average revenue?
SELECT assigned_room_type, AVG(booking_value) AS Avg_Revenue
FROM [hotel_bookings_cleaned-2]
GROUP BY assigned_room_type
ORDER BY Avg_Revenue DESC

-- Question 2: Which months have the highest booking activity?
SELECT arrival_date_month, COUNT(*) AS total_bookings
FROM [hotel_bookings_cleaned-2]
GROUP BY arrival_date_month
ORDER BY total_bookings DESC

-- Question 3: Average revenue by customer segment
SELECT customer_type, AVG(booking_value) AS avg_revenue
FROM [hotel_bookings_cleaned-2]
GROUP BY customer_type
ORDER BY avg_revenue DESC

-- Question 4: Revenue by Hotel Type
SELECT hotel, AVG(booking_value) AS avg_revenue
FROM [hotel_bookings_cleaned-2]
GROUP BY hotel
ORDER BY avg_revenue DESC

-- Question 5: Total revenue by Market segment
SELECT market_segment, SUM(booking_value) AS avg_revenue
FROM [hotel_bookings_cleaned-2]
GROUP BY market_segment
ORDER BY avg_revenue DESC

-- Question 6: Top 10 Countries by Number of Bookings
SELECT TOP 10 country, COUNT(*) AS bookings
FROM [hotel_bookings_cleaned-2]
GROUP BY country
ORDER BY bookings DESC

-- Question 7: What meal plan is most associated with high revenue bookings?
SELECT meal, AVG(booking_value) AS avg_revenue
FROM [hotel_bookings_cleaned-2]
GROUP BY meal
ORDER BY avg_revenue DESC

-- Question 8: Which months combine high bookings AND high revenue?
SELECT
    arrival_date_month,
    COUNT(*) AS bookings,
    SUM(booking_value) AS total_revenue
FROM [hotel_bookings_cleaned-2]
GROUP BY arrival_date_month
ORDER BY total_revenue DESC

-- Question 9: Do longer stays generate proportionally more revenue?
SELECT total_nights, AVG(booking_value) AS avg_revenue
FROM [hotel_bookings_cleaned-2]
GROUP BY total_nights
ORDER BY avg_revenue DESC
