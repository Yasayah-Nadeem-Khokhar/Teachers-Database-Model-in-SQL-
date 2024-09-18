-- Table: teacher
CREATE TABLE teacher (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address TEXT,
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(20),
    Country VARCHAR(50),
    DoJ VARCHAR(100),
    DoR VARCHAR(100)
);

-- Table: position
CREATE TABLE position (
    PositionID INT PRIMARY KEY,
    PositionTitle VARCHAR(100),
    PositionDescription TEXT,
    AcademicRank VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: education
CREATE TABLE education (
    EducationID INT PRIMARY KEY,
    Degree VARCHAR(100),
    FieldOfStudy VARCHAR(100),
    University VARCHAR(100),
    Country VARCHAR(50),
    YearOfCompletion INT,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: publication
CREATE TABLE publication (
    PublicationID INT PRIMARY KEY,
    Title VARCHAR(200),
    JournalName VARCHAR(200),
    PublicationDate DATE,
    DOI VARCHAR(100),
    Publisher VARCHAR(100),
    CoAuthors TEXT,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: award
CREATE TABLE award (
    AwardID INT PRIMARY KEY,
    AwardName VARCHAR(100),
    AwardingBody VARCHAR(200),
    DateAwarded DATE,
    Description TEXT,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: administrativeengagement
CREATE TABLE administrativeengagement (
    EngagementID INT PRIMARY KEY,
    Role VARCHAR(100),
    Committee VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: languageskill
CREATE TABLE languageskill (
    LanguageSkillID INT PRIMARY KEY,
    Language VARCHAR(50),
    Proficiency VARCHAR(50),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: researchinterest
CREATE TABLE researchinterest (
    ResearchInterestID INT PRIMARY KEY,
    Interest VARCHAR(100),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: department
CREATE TABLE department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: course
CREATE TABLE course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    CourseCode VARCHAR(20),
    DepartmentID INT,
    Description TEXT,
    FOREIGN KEY (DepartmentID) REFERENCES department(DepartmentID)
);

-- Table: researchproject
CREATE TABLE researchproject (
    ProjectID INT PRIMARY KEY,
    ProjectTitle VARCHAR(200),
    FundingAgency VARCHAR(200),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(15,2),
    Description TEXT,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: achievement
CREATE TABLE achievement (
    AchievementID INT PRIMARY KEY,
    Achievement VARCHAR(200),
    DateAchieved DATE,
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);

-- Table: teachercourse
CREATE TABLE teachercourse (
    TeacherCourseID INT PRIMARY KEY,
    TeacherID INT,
    CourseID INT,
    Semester VARCHAR(10),
    Year INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID),
    FOREIGN KEY (CourseID) REFERENCES course(CourseID)
);

-- Table: teachinginterest
CREATE TABLE teachinginterest (
    TeachingInterestID INT PRIMARY KEY,
    Interest VARCHAR(100),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES teacher(TeacherID)
);
