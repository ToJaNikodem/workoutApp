-- Menu page

    -- Selecting user language
    SELECT language
    FROM users
    WHERE id = '$user_id';

    -- Selecting user username
    SELECT username
    FROM users
    WHERE id = '$user_id';

-- Home page

    -- Selecting user workouts
    SELECT wn.workout_name_en
    FROM workouts w
    JOIN workout_names wn ON w.workout_name_id = wn.id
    WHERE w.user_id = '$user_id';

    -- Selecting workouts variants
    SELECT vn.variant_name_en
    FROM workout_variants wv
    JOIN variant_names vn ON wv.variant_name_id = vn.id
    WHERE wv.workout_id = '$workout_id';

-- History page

    -- Selecting sets from all exercies
    SELECT set_number, weight, rep_count
    FROM set_logs
    INNER JOIN strength_exercise_logs ON set_logs.strength_exercise_log_id = strength_exercise_logs.id
    INNER JOIN variant_session_logs ON strength_exercise_logs.session_id = variant_session_logs.id
    WHERE variant_session_logs.date = '$date';