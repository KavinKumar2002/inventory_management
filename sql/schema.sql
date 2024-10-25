CREATE TABLE IF NOT EXISTS product (
    product_id TEXT PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS location (
    location_id TEXT PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS product_movement (
    movement_id TEXT PRIMARY KEY,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    from_location TEXT,
    to_location TEXT,
    product_id TEXT,
    qty INTEGER NOT NULL,
    FOREIGN KEY (from_location) REFERENCES location(location_id),
    FOREIGN KEY (to_location) REFERENCES location(location_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
