CREATE TABLE IF NOT EXISTS users(
  id BIGSERIAL PRIMARY KEY,
  email VARCHAR(128) UNIQUE,
  name VARCHAR(256),
  password VARCHAR(128)
);

CREATE TABLE pets(
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(256),
  species VARCHAR(256),
  breed VARCHAR(256),
  owner_id INTEGER,
  FOREIGN KEY (owner_id) REFERENCES users(id)
)