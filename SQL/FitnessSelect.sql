-- SELECT m.FName, m.LName, a.Title AS AchievementTitle, ad.Description AS AchievementDescription
-- FROM Member m
-- JOIN Achievement a ON m.MemberID = a.MemberID
-- JOIN AchievementDescription ad ON a.Title = ad.Title
-- WHERE m.FName = 'Riley' AND m.LName = 'Olson'
-- ORDER BY a.DateObtained ASC
-- LIMIT 1;

-- SELECT m.FName AS MemberFirstName, m.LName AS MemberLastName,
--        ts.Place, ts.Time, ts.Price, ts.Status, ts.Duration,
--        t.FName AS TrainerFirstName, t.LName AS TrainerLastName
-- FROM Member m
-- JOIN MemberSchedule ms ON m.MemberID = ms.MemberID
-- JOIN TrainSession ts ON ms.SessionID = ts.SessionID
-- JOIN Trainer t ON ts.TrainerID = t.TrainerID
-- WHERE m.FName = 'Riley' AND m.LName = 'Olson';

-- SELECT m.FName, m.LName, r.RoutineName, r.Description
-- FROM Routine r
-- JOIN Member m ON r.MemberID = m.MemberID
-- WHERE m.FName = 'Riley' AND m.LName = 'Olson';

-- SELECT e.Name AS ExerciseName, em.MuscleName
-- FROM Routine r
-- JOIN Member m ON r.MemberID = m.MemberID
-- LEFT JOIN RoutineExercise re ON r.MemberID = re.MemberID AND r.RoutineName = re.RoutineName
-- LEFT JOIN Exercise e ON re.ExerciseID = e.ExerciseID
-- LEFT JOIN ExerciseMuscles em ON e.ExerciseID = em.ExerciseID
-- WHERE m.FName = 'Riley' AND m.LName = 'Olson';



