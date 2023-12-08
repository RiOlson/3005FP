INSERT INTO Muscle (MuscleName) VALUES
    ('Biceps'),
    ('Triceps'),
    ('Quadriceps'),
    ('Hamstrings'),
    ('Deltoids');

INSERT INTO Exercise (Name, Reps) VALUES
    ('Push-up', 15),
    ('Bicep Curl', 12),
    ('Squat', 20),
    ('Deadlift', 10),
    ('Shoulder Press', 15);

INSERT INTO AchievementDescription (Title, Description) VALUES
    ('One Year', 'You have spent one year at the gym!'),
    ('Winner!', 'You won a gym competition!'),
    ('Path to Success', 'Sign up for your first PT session!');

INSERT INTO Member (FName, LName, Email, Password) VALUES
    ('Riley', 'Olson', 'Riley.Olson@example.com', 'password123'),
    ('John', 'Doe', 'John.Doe@example.com', 'password'),
    ('Jane', 'Smith', 'Jane.Smith@example.com', 'pass123');

INSERT INTO Achievement (Title, DateObtained, MemberID) VALUES
    ('One Year', '2023-02-11', 1),
    ('Winner!', '2023-04-21', 2),
    ('Path to Success', '2023-06-13', 3);

INSERT INTO Trainer (FName, LName, Email, Password) VALUES
    ('Jim', 'Guy', 'trainer.one@example.com', 'password123'),
    ('Trey', 'Ner', 'trainer.two@example.com', 'password');

INSERT INTO TrainSession (Place, Time, Price, Status, Duration, MemberID, TrainerID) VALUES
    ('Gym A', '2023-04-01 10:00:00', 30.00, 'Completed', 60, 1, 1),
    ('Gym B', '2023-04-05 15:30:00', 20.00, 'Scheduled', 45, 2, 2),
    ('Gym C', '2023-04-10 08:00:00', 25.00, 'Scheduled', 90, 3, 1);

INSERT INTO Routine (MemberID, RoutineName, Description) VALUES
    (1, 'Beginner Routine', 'Easy workout for starters'),
    (2, 'Advanced Routine', 'Intense workout for advanced users'),
    (3, 'Home Workout', 'Exercises that can be done at home');

INSERT INTO ExerciseMuscles (MuscleName, ExerciseID) VALUES
    ('Biceps', 1),
    ('Triceps', 1),
    ('Quadriceps', 3),
    ('Hamstrings', 4),
    ('Deltoids', 5);

INSERT INTO RoutineExercise (MemberID, RoutineName, ExerciseID) VALUES
    (1, 'Beginner Routine', 1),
    (1, 'Beginner Routine', 3),
    (2, 'Advanced Routine', 4),
    (3, 'Home Workout', 2),
    (3, 'Home Workout', 5);

INSERT INTO MemberSchedule (MemberID, SessionID) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

INSERT INTO TrainerSchedule (TrainerID, SessionID) VALUES
    (1, 1),
    (2, 2),
    (1, 3);
