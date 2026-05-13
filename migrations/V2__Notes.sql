CREATE TABLE NOTE_META_DATA (
    ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    NOTATION VARCHAR(5) NOT NULL UNIQUE
);

CREATE TABLE NOTE_TRANSLATION(
    NOTE_TRANSLATION_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    NOTE_ID INT NOT NULL references NOTE_META_DATA(ID),
    LANGUAGE_ID INT NOT NULL references CARNATIC_LANGUAGE(ID),
    NOTE_NAME VARCHAR(5) NOT NULL,
    NOTE_FULL_NAME VARCHAR(50) NOT NULL,    
    NOTE_DESCRIPTION VARCHAR(100),
    UNIQUE (NOTE_ID, LANGUAGE_ID)
);

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Sa') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Sa', 
    'Shadjam', 
    'The first note.'
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ri1') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ri1', 
    'Shuddha Rishabham', 
    ''
FROM inserted_note;


WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ri2') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ri2', 
    'Chathushruti Rishabham', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ri3') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ri3', 
    'Chathushruti Rishabham', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ga3') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ga3', 
    'Shudda Gandharam', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ga1') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ga1', 
    'Saadharana Gandharam', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ga2') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ga2', 
    'Anthara Gandharam', 
    ''
FROM inserted_note;


WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ma1') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ma1', 
    'Shuddha Madhyamam', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ma2') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ma2', 
    'Prati Madhyamam', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Pa') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Pa', 
    'Panchamam', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Dha1') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Dha1', 
    'Shuddha Dhaivatham', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Dha2') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Dha2', 
    'Chathushruti Dhaivatham', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Dha3') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Dha3', 
    'Shadshruti Dhaivatham', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ni3') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ni3', 
    'Shudda Nishadam', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ni1') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ni1', 
    'Kaishiki Nishadam', 
    ''
FROM inserted_note;

WITH inserted_note AS (
    INSERT INTO NOTE_META_DATA (NOTATION) 
    VALUES ('Ni2') 
    RETURNING ID
)
INSERT INTO NOTE_TRANSLATION (NOTE_ID, LANGUAGE_ID, NOTE_NAME, NOTE_FULL_NAME, NOTE_DESCRIPTION)
SELECT 
    inserted_note.ID, 
    (SELECT ID FROM CARNATIC_LANGUAGE WHERE LANG_KEY = 'en'), -- Dynamically find English ID
    'Ni2', 
    'Kaakali Nishadam', 
    ''
FROM inserted_note;