
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    class INT
);


DO $$
BEGIN
    BEGIN
        INSERT INTO students(name, age, class) VALUES ('Anisha',16,8);
        INSERT INTO students(name, age, class) VALUES ('Neha',17,8);
        INSERT INTO students(name, age, class) VALUES ('Mayank',19,9);
        RAISE NOTICE ' Transaction Successfully Done';

    EXCEPTION
        WHEN OTHERS THEN
            RAISE NOTICE 'Transaction Failed..! Rolling back changes.';
            RAISE;
    END;
END;
$$;


SELECT * FROM students;
