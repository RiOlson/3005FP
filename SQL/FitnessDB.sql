CREATE TABLE Muscle (
    MuscleName VARCHAR(255) PRIMARY KEY
);

CREATE TABLE Exercise (
    ExerciseID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Reps INT
);

CREATE TABLE AchievementDescription (
    Title VARCHAR(255) PRIMARY KEY,
    Description VARCHAR(255)
);

CREATE TABLE Member (
    MemberID SERIAL PRIMARY KEY,
    FName VARCHAR(255),
    LName VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255)
);

CREATE TABLE Achievement (
    AchievementID SERIAL PRIMARY KEY,
    Title VARCHAR(255) REFERENCES AchievementDescription(Title),
    DateObtained DATE,
    MemberID INT REFERENCES Member(MemberID)
);

CREATE TABLE Trainer (
    TrainerID SERIAL PRIMARY KEY,
    FName VARCHAR(255),
    LName VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255)
);

CREATE TABLE TrainSession (
    SessionID SERIAL PRIMARY KEY,
    Place VARCHAR(255),
    Time TIMESTAMP,
    Price DECIMAL(10, 2),
    Status VARCHAR(255),
    Duration INT,
    MemberID INT REFERENCES Member(MemberID),
    TrainerID INT REFERENCES Trainer(TrainerID)
);

CREATE TABLE Routine (
    MemberID INT,
    RoutineName VARCHAR(255),
    Description VARCHAR(255),
    PRIMARY KEY (MemberID, RoutineName),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

CREATE TABLE ExerciseMuscles (
    MuscleName VARCHAR(255),
    ExerciseID INT,
    PRIMARY KEY (MuscleName, ExerciseID),
    FOREIGN KEY (MuscleName) REFERENCES Muscle(MuscleName),
    FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID)
);

CREATE TABLE RoutineExercise (
    MemberID INT,
    RoutineName VARCHAR(255),
    ExerciseID INT,
    PRIMARY KEY (MemberID, RoutineName, ExerciseID),
    FOREIGN KEY (MemberID, RoutineName) REFERENCES Routine(MemberID, RoutineName),
    FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID)
);

CREATE TABLE MemberSchedule (
    MemberID INT,
    SessionID INT,
    PRIMARY KEY (MemberID, SessionID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (SessionID) REFERENCES TrainSession(SessionID)
);

CREATE TABLE TrainerSchedule (
    TrainerID INT,
    SessionID INT,
    PRIMARY KEY (TrainerID, SessionID),
    FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID),
    FOREIGN KEY (SessionID) REFERENCES TrainSession(SessionID)
);
