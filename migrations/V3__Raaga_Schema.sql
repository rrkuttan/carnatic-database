CREATE TYPE raaga_type AS ENUM (
    'JANYA',
    'MELAKARTA'
);

CREATE TABLE raaga_meta_data (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    classifier raaga_type NOT NULL,
    melakarta_num SMALLINT UNIQUE,
    parent_raaga_id INT references raaga_meta_data(id),
    hash_signature VARCHAR(200) NOT NULL,
    aarohanam VARCHAR(50) NOT NULL,
    avarohanam VARCHAR(50) NOT NULL       
);

CREATE TABLE raaga_translation (
    raaga_translation_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    raaga_id INT NOT NULL references raaga_meta_data(id),
    language_id INT NOT NULL references carnatic_language(id),
    raaga_name VARCHAR(50) NOT NULL,
    raaga_description TEXT,    
    aarohanam VARCHAR(50) NOT NULL,
    avarohanam VARCHAR(50) NOT NULL,
    UNIQUE (raaga_id, language_id)
);