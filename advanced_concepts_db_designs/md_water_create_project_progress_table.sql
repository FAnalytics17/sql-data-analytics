
CREATE TABLE project_progress (
		project_id SERIAL PRIMARY KEY,
        source_id VARCHAR(20) NOT NULL REFERENCES water_source(source_id) ON DELETE CASCADE ON UPDATE CASCADE,
        address VARCHAR(50),
        town VARCHAR(30),
        province VARCHAR(30),
        source_type VARCHAR(50),
        improvement VARCHAR(50),
        source_status VARCHAR(50) DEFAULT 'Backlog' CHECK (source_status IN ('Backlog','In progress','Complete')),
        date_of_completion DATE,
        comments TEXT
        );
        
        
