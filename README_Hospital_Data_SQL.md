
# 🏥 Hospital Data SQL Analysis

This project is part of the **30 Days SQL Micro Course Certificate Assignment** and involves analyzing a fictional hospital dataset using SQL queries. The project demonstrates various SQL techniques to derive meaningful insights from the data.

## 📁 Dataset Structure

A table named `Hospital` is created with the following schema:

| Column Name      | Data Type      | Description                                 |
|------------------|----------------|---------------------------------------------|
| Hospital_name    | VARCHAR(100)   | Name of the hospital                        |
| Location         | VARCHAR(100)   | City or location of the hospital            |
| Department       | VARCHAR(100)   | Department within the hospital              |
| Doctors_count    | INT            | Number of doctors in that department        |
| Patient_count    | INT            | Number of patients treated                  |
| Admission_date   | DATE           | Date when patients were admitted            |
| Discharge_date   | DATE           | Date when patients were discharged          |
| Medical_expenses | NUMERIC(10,2)  | Total medical expenses incurred             |

## 🧠 SQL Tasks Performed

The following insights were generated using SQL queries:

1. **Total Number of Patients**  
   → Sum of all patients across all hospitals.

2. **Average Number of Doctors per Hospital**  
   → Average count of doctors per hospital.

3. **Top 3 Departments with the Highest Number of Patients**  
   → Identified departments with the most patients.

4. **Hospital with the Maximum Medical Expenses**  
   → Determined the hospital that spent the most.

5. **Daily Average Medical Expenses** *(Query not implemented yet)*  
   → To be calculated as total expenses divided by stay duration.

6. **Longest Hospital Stay**  
   → Found the patient with the longest admission-to-discharge duration.

7. **Total Patients Treated Per City**  
   → Number of patients treated grouped by city/location.

8. **Average Length of Stay Per Department**  
   → Average stay (in days) per department.

9. **Department with the Lowest Number of Patients**  
   → Department with the least number of treated patients.

10. **Monthly Medical Expenses Report**  
    → Summarized expenses per month using `TO_CHAR()` on `Admission_date`.

## 📌 Tools & Technologies

- **Database:** PostgreSQL
- **Language:** SQL
- **Platform:** pgAdmin / Any SQL Client

## 📈 Learning Outcomes

Through this project, I learned how to:
- Create and structure SQL tables
- Perform aggregation and grouping
- Use date functions and sorting
- Extract valuable insights from healthcare data

## 🧑‍💻 Author

**Anjali Sahu**  
Aspiring Data Analyst | Passionate about Data Storytelling  
🔍 Actively seeking opportunities in Data Analysis
