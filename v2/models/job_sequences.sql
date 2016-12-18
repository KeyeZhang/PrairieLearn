CREATE TABLE IF NOT EXISTS job_sequences (
    id SERIAL PRIMARY KEY,
    start_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    finish_date TIMESTAMP WITH TIME ZONE,
    course_id INTEGER REFERENCES courses ON DELETE CASCADE ON UPDATE CASCADE,
    number INTEGER,
    user_id INTEGER REFERENCES users ON DELETE CASCADE ON UPDATE CASCADE,
    authn_user_id INTEGER REFERENCES users ON DELETE CASCADE ON UPDATE CASCADE,
    type TEXT,
    description TEXT,
    status enum_job_status DEFAULT 'Running',
    UNIQUE (course_id, number)
);
