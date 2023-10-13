SELECT * FROM projects.diabetes;
------------How many records are there in the dataset? -------
select count(*) from diabetes;

------------What are the data types of each column? ---------
describe diabetes;

------------Are there any missing values in the dataset?-------
select* from diabetes
where Pregnancies or Glucose or BloodPressure or SkinThickness or Insulin or BMI or DiabetesPedigreeFunction or Age or Outcome is null;

------------What is the average age of the patients in the dataset? ----------
select avg(age) from diabetes;

------------What is the maximum glucose level recorded? --------------------
select max(glucose) from diabetes;

------------How many patients have been diagnosed with diabetes (Outcome = 1)? ---------
select count (Outcome) from diabetes
where Outcome=1;

------------What is the distribution of pregnancies among the patients? -----------
SELECT Pregnancies, COUNT(*) AS Count
FROM diabetes
GROUP BY Pregnancies
ORDER BY Pregnancies;

------------How many patients have a BMI (Body Mass Index) greater than a certain threshold?----------
SELECT COUNT(*) AS NumberOfPatients
FROM diabetes
WHERE BMI > 25.0;

------------How many patients have a Glucose level within a specific range?--------------
SELECT COUNT(*) AS NumberOfPatients
FROM diabetes
WHERE glucose between 80 and 120;

-------------Calculate the average Glucose level for patients with and without diabetes (Outcome) ?--------------
SELECT Outcome, AVG(Glucose) AS AverageGlucose
FROM diabetes
GROUP BY Outcome;

-------------Determine the number of patients with a certain number of pregnancies ? --------------------
SELECT Pregnancies, COUNT(*) AS NumberOfPatients
FROM diabetes
GROUP BY Pregnancies
ORDER BY Pregnancies;

--------------Group the data by Age and calculate the average BloodPressure and BMI for each age group ?-----------
SELECT age, avg(bloodpressure) as avgbloodpressure,avg(bmi) as avgBMI
FROM diabetes
GROUP BY age
order by age;

-------------Group the data by Outcome and calculate the mean and standard deviation of Glucose levels for each group?----
SELECT Outcome,
AVG(Glucose) AS MeanGlucose,
STDDEV(Glucose) AS StandardDeviationGlucose
FROM diabetes
GROUP BY Outcome;
