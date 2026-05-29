ALTER TABLE NOTE_META_DATA ADD COLUMN ratio_to_tonic   NUMERIC(10, 6);  -- e.g. 1.125000
ALTER TABLE NOTE_META_DATA ADD COLUMN cents_from_tonic INT;              -- e.g. 204
ALTER TABLE NOTE_META_DATA ADD COLUMN frequency_at_c4  NUMERIC(10, 4);  -- e.g. 293.6648
ALTER TABLE NOTE_META_DATA ADD COLUMN swara_family VARCHAR(5); -- 'S','R','G','M','P','D','N'
ALTER TABLE NOTE_META_DATA ADD COLUMN variant       INT;        -- 1, 2, or 3

-- Sa
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.000000,
    cents_from_tonic = 0,
    frequency_at_c4  = 261.6256,
    swara_family     = 'Sa',
    variant          = 1
WHERE notation = 'Sa';

-- Shuddha Rishabha
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.066667,
    cents_from_tonic = 112,
    frequency_at_c4  = 279.0672,
    swara_family     = 'Ri',
    variant          = 1
WHERE notation = 'Ri1';

-- Chatushruti Rishabha / Shuddha Gandhara (shared semitone)
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.125000,
    cents_from_tonic = 204,
    frequency_at_c4  = 294.3288,
    swara_family     = 'Ri',
    variant          = 2
WHERE notation = 'Ri2';

UPDATE note_meta_data SET
    ratio_to_tonic   = 1.125000,
    cents_from_tonic = 204,
    frequency_at_c4  = 294.3288,
    swara_family     = 'Ga',
    variant          = 1
WHERE notation = 'Ga1';

-- Shatshruti Rishabha / Sadharana Gandhara (shared semitone)
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.200000,
    cents_from_tonic = 316,
    frequency_at_c4  = 313.9507,
    swara_family     = 'Ri',
    variant          = 3
WHERE notation = 'Ri3';

UPDATE note_meta_data SET
    ratio_to_tonic   = 1.200000,
    cents_from_tonic = 316,
    frequency_at_c4  = 313.9507,
    swara_family     = 'Ga',
    variant          = 2
WHERE notation = 'Ga2';

-- Antara Gandhara
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.250000,
    cents_from_tonic = 386,
    frequency_at_c4  = 327.0320,
    swara_family     = 'Ga',
    variant          = 3
WHERE notation = 'Ga3';

-- Shuddha Madhyama
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.333333,
    cents_from_tonic = 498,
    frequency_at_c4  = 348.8341,
    swara_family     = 'Ma',
    variant          = 1
WHERE notation = 'Ma1';

-- Prati Madhyama
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.406250,
    cents_from_tonic = 590,
    frequency_at_c4  = 367.9109,
    swara_family     = 'Ma',
    variant          = 2
WHERE notation = 'Ma2';

-- Panchama
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.500000,
    cents_from_tonic = 702,
    frequency_at_c4  = 392.4383,
    swara_family     = 'Pa',
    variant          = 1
WHERE notation = 'Pa';

-- Shuddha Dhaivata
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.600000,
    cents_from_tonic = 814,
    frequency_at_c4  = 418.6009,
    swara_family     = 'Dha',
    variant          = 1
WHERE notation = 'Dha1';

-- Chatushruti Dhaivata / Shuddha Nishada (shared semitone)
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.666667,
    cents_from_tonic = 906,
    frequency_at_c4  = 436.0426,
    swara_family     = 'Dha',
    variant          = 2
WHERE notation = 'Dha2';

UPDATE note_meta_data SET
    ratio_to_tonic   = 1.666667,
    cents_from_tonic = 906,
    frequency_at_c4  = 436.0426,
    swara_family     = 'Ni',
    variant          = 1
WHERE notation = 'Ni1';

-- Shatshruti Dhaivata / Kaisika Nishada (shared semitone)
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.800000,
    cents_from_tonic = 1018,
    frequency_at_c4  = 470.9261,
    swara_family     = 'Dha',
    variant          = 3
WHERE notation = 'Dha3';

UPDATE note_meta_data SET
    ratio_to_tonic   = 1.800000,
    cents_from_tonic = 1018,
    frequency_at_c4  = 470.9261,
    swara_family     = 'Ni',
    variant          = 2
WHERE notation = 'Ni2';

-- Kakali Nishada
UPDATE note_meta_data SET
    ratio_to_tonic   = 1.875000,
    cents_from_tonic = 1088,
    frequency_at_c4  = 490.5480,
    swara_family     = 'Ni',
    variant          = 3
WHERE notation = 'Ni3';