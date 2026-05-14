
--1. Total number of patients
  
SELECT SUM(patients_COUNT) AS Total_patients
FROM Hospital_Data;

--2. Average number of doctors per hospital
SELECT Hospital_name, AVG(Doctors_Count) AS Average_of_doctors
FROM Hospital_Data
GROUP BY Hospital_name;

--3. Top 3 departments with highest number of patients
SELECT Department, Patients_Count 
FROM Hospital_Data 
ORDER BY patients_Count DESC
LIMIT 3;

--4. Hospital with maximum medical expenses
SELECT Hospital_name, Medical_Expenses
FROM Hospital_Data
ORDER BY Medical_Expenses DESC;

--5. Daily average medical expenses
SELECT Admission_Date, AVG(Medical_Expenses) AS Daily_Avg_MedicalExpenses
FROM Hospital_Data
GROUP BY Admission_Date
ORDER BY Daily_Avg_MedicalExpenses;

--6. longest Hospital Stay
SELECT Hospital_name, (Discharge_Date - Admission_Date) AS longest_Day_Stay
FROM Hospital_Data
ORDER BY Hospital_name
LIMIT 1;


--7. Total patients treated per city
SELECT Location, Sum(patients_Count) AS Total_Patients
FROM Hospital_Data
GROUP BY Location;

--8. Average length of stay per department
SELECT department, Round(AVG(Discharge_Date - Admission_Date), 2) AS Average_length
FROM Hospital_Data
GROUP BY department;

--9.Identity the department With the lowest number of patients
SELECT department, patients_count 
FROM Hospital_Data
ORDER BY patients_count
LIMIT 1;


--10.Monthly medical expenses Report
SELECT EXTRACT(Month FROM Admission_Date) AS Month,
SUM(Medical_Expenses) AS Total_ME
FROM Hospital_Data
GROUP BY Month
ORDER BY Total_ME;