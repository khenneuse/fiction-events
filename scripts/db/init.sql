-- Create tables
CREATE TABLE IF NOT EXISTS places (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    world VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS events (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    description TEXT,
    place_id INTEGER REFERENCES places(id) ON DELETE CASCADE
);

-- Insert sample data
INSERT INTO places (name, world, description) VALUES
    ('Rivendell', 'Middle-earth', 'The Elven refuge led by Elrond.'),
    ('Hogwarts', 'Wizarding World', 'The magical school for witches and wizards.'),
    ('Tatooine', 'Star Wars Galaxy', 'A desert planet and home to Luke Skywalker.'),
    ('Asgard', 'Norse Mythology', 'The realm of the gods ruled by Odin.');

INSERT INTO events (title, date, description, place_id) VALUES
    ('Council of Elrond', '3018-10-25', 'A meeting in Rivendell to decide the fate of the One Ring.', 1),
    ('Battle of Hogwarts', '1998-05-02', 'The final battle against Voldemort and his forces.', 2),
    ('Podrace in Mos Espa', '0032-05-01', 'An intense podracing event won by Anakin Skywalker.', 3),
    ('Ragnarök', '1000-01-01', 'The foretold end of the world in Norse mythology.', 4);
