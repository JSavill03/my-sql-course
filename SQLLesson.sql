
-- SELECT 
--     ps.PatientId
--     , ps.Hospital
--     , ps.Ward
--     , ps.AdmittedDate 
--     , ps.DischargeDate
--     , ps.Tariff
--     , DATEADD(WEEK, -2, ps.AdmittedDate) AS ReminderDate
--     , DATEDIFF(DAY, ps.AdmittedDate , ps.DischargeDate)+1 AS DaysInHospital
--       ,DATEDIFF(DAY, ps.AdmittedDate , ps.DischargeDate)+1 AS LengthOfStay
-- FROM PatientStay AS ps

-- WHERE ps.Hospital IN ('KINGSTON','PRUH')
-- ORDER BY 
--     ps.PatientID DESC

SELECT 
    ps.PatientId
    ,ps.AdmittedDate
    ,h.HospitalType
    ,h.Hospital 
    ,ps.Hospital    
FROM PatientStay ps 
left JOIN DimHospitalBad h 
    ON ps.Hospital = h.Hospital


