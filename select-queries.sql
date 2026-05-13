SELECT nt.note_full_name 
FROM note_translation nt
JOIN note_meta_data nm ON nt.note_id = nm.id
JOIN carnatic_language cl ON nt.language_id = cl.id
WHERE nm.notation = 'Ri1' 
AND cl.lang_key = 'ml';

SELECT COALESCE(target.note_full_name, fallback.note_full_name) AS note_full_name
FROM note_meta_data nm
-- Join for the target language (ml)
LEFT JOIN note_translation target ON nm.id = target.note_id 
  AND target.language_id = (SELECT id FROM carnatic_language WHERE lang_key = 'tl')
-- Join for the fallback language (en)
LEFT JOIN note_translation fallback ON nm.id = fallback.note_id 
  AND fallback.language_id = (SELECT id FROM carnatic_language WHERE lang_key = 'en')
WHERE nm.notation = 'Ri1';

SELECT DISTINCT ON (nm.id) 
    nt.note_full_name,
    nt.note_name,    -- Example additional column
    cl.lang_key AS used_lang -- Useful to know which language was actually picked
FROM note_meta_data nm
JOIN note_translation nt ON nm.id = nt.note_id
JOIN carnatic_language cl ON nt.language_id = cl.id
WHERE nm.notation = 'Ri1' 
  AND cl.lang_key IN ('ml', 'en')
ORDER BY nm.id, CASE WHEN cl.lang_key = 'ml' THEN 1 ELSE 2 END;
