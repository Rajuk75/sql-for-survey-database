CREATE TABLE surveys (
    survey_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255)
);

CREATE TABLE questions (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    survey_id INT,
    question_text TEXT,
    FOREIGN KEY (survey_id) REFERENCES surveys(survey_id)
);

CREATE TABLE options (
    option_id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT,
    option_text VARCHAR(255),
    FOREIGN KEY (question_id) REFERENCES questions(question_id)
);

CREATE TABLE responses (
    response_id INT AUTO_INCREMENT PRIMARY KEY,
    survey_id INT,
    question_id INT,
    option_id INT,
    FOREIGN KEY (survey_id) REFERENCES surveys(survey_id),
    FOREIGN KEY (question_id) REFERENCES questions(question_id),
    FOREIGN KEY (option_id) REFERENCES options(option_id)
);
