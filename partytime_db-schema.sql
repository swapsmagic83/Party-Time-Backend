DROP TABLE IF EXISTS guests, events, cards, hosts CASCADE;
CREATE TABLE hosts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email TEXT NOT NULL
        CHECK (position('@' IN email) > 1),
    phone TEXT,
    address TEXT
);

CREATE TABLE cards (
    id SERIAL PRIMARY KEY,
    occasion VARCHAR(25),
    img_url TEXT
);

CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    host_id INTEGER REFERENCES hosts(id),
    card_id INTEGER REFERENCES cards(id),
    heading TEXT,
    heading_color VARCHAR(7) DEFAULT '#000000',
    info TEXT,
    info_color VARCHAR(7) DEFAULT '#000000',
    date_time TEXT NOT NULL,
    date_time_color VARCHAR(7) DEFAULT '#000000',
    address TEXT NOT NULL,
    address_color VARCHAR(7) DEFAULT '#000000',
    invite_id UUID UNIQUE NOT NULL DEFAULT gen_random_uuid()
);

CREATE TABLE guests (
    id SERIAL PRIMARY KEY,
    event_id INTEGER REFERENCES events(id),
    name VARCHAR(100),
    email VARCHAR(150) NOT NULL,
    phone VARCHAR(20),
    rsvp_status VARCHAR(20) DEFAULT 'pending',
    people INTEGER
);