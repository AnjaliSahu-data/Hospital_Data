Create table Hospital(
	Hospital_name VARCHAR(100),
	Location VARCHAR(100),
	Department VARCHAR(100),
	Doctors_count INT,
	Patient_count INT,
	Admission_date Date,
	Discharge_date Date,
	Medical_expenses NUMERIC(10,2)	
);

Select * from Hospital;

---1.Total Number of Patients
-- Write an SQL query to find the total number of patients across all hospitals.

SELECT SUM(Patient_count) AS Total_Patients
FROM hospital;

-- 2.Average Number of Doctors per Hospital
--Retrieve the average count of doctors available in each hospital.

    SELECT Hospital_name, AVG(Doctors_count) AS Doctors_Per_Hospital
    FROM hospital
    GROUP BY Hospital_name;



-- 3.Top 3 Departments with the Highest Number of Patients
--Find the top 3 hospital departments that have the highest number of patients.

SELECT Department, SUM(Patient_count) AS Total_Patients
FROM hospital
GROUP BY Department
ORDER BY Total_Patients DESC
LIMIT 3;


--4. Hospital with the Maximum Medical Expenses
-- Identify the hospital that recorded the highest medical expenses.

SELECT Hospital_name, SUM(Medical_expenses) AS Total_Expenses
FROM hospital
GROUP BY Hospital_name
ORDER BY Total_Expenses DESC
LIMIT 1;


--5. Daily Average Medical Expenses
-- Calculate the average medical expenses per day for each hospital.


--6. Longest Hospital Stay
-- Find the patient with the longest stay by calculating the difference between Discharge Date and Admission Date.

SELECT *
FROM hospital
ORDER BY Discharge_date - Admission_date DESC
LIMIT 1;

--7. Total Patients Treated Per City
-- Count the total number of patients treated in each city.

SELECT Location, SUM(Patient_count) AS Total_Patients
FROM hospital
GROUP BY Location
ORDER BY Total_Patients DESC;

--8. Average Length of Stay Per Department
-- Calculate the average number of days patients spend in each department.

SELECT Department, 
       AVG(Discharge_date - Admission_date) AS Avg_Stay
FROM hospital
GROUP BY Department
ORDER BY Avg_Stay DESC;


--9. Identify the Department with the Lowest Number of Patients
-- Find the department with the least number of patients.

SELECT Department, SUM(Patient_count) AS Total_Patients
FROM hospital
GROUP BY Department
ORDER BY Total_Patients ASC
LIMIT 1;

--10. Monthly Medical Expenses Report
-- Group the data by month and calculate the total medical expenses for each month.

SELECT TO_CHAR(Admission_date, 'YYYY-MM') AS month,
       SUM(Medical_expenses) AS total_expenses
FROM hospital
GROUP BY month
ORDER BY month;
