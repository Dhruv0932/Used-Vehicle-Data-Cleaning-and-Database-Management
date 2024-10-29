CREATE SCHEMA vehicles;

CREATE TABLE Vehicles (
    id BIGINT PRIMARY KEY,  -- Primary key to uniquely identify each vehicle
    price BIGINT,           -- Price of the vehicle,
    year INT,               -- Year the vehicle was manufactured.
    odometer FLOAT,         -- Odometer reading of the vehicle.
    VIN VARCHAR(255),       -- Vehicle Identification Number (VIN)
    posting_date DATE       -- Date when the vehicle was posted for sale.
);
CREATE TABLE region (
    id BIGINT PRIMARY KEY REFERENCES Vehicles(id),  -- Primary key and foreign key referencing Vehicles table
    region VARCHAR(255),          -- Name of the region
    region_url VARCHAR(255),      -- URL for the region
    county VARCHAR(255),          -- County name
    state VARCHAR(255),           -- State name
    lat FLOAT,                    -- Latitude for the region
    long FLOAT                    -- Longitude for the region
);
CREATE TABLE vehicles.manufacturer_model (
    id BIGINT PRIMARY KEY REFERENCES vehicles(id),  -- Primary key and foreign key referencing Vehicles table
    manufacturer VARCHAR(255),                      -- Manufacturer name
    model VARCHAR(255)                              -- Model name
);
CREATE TABLE vehicles.vehicle_details (
    id BIGINT PRIMARY KEY REFERENCES vehicles(id),  -- Primary key and foreign key referencing Vehicles table
    condition VARCHAR(255),                        -- Vehicle condition
    cylinders VARCHAR(255),                        -- Number of cylinders
    fuel VARCHAR(255),                             -- Fuel type
    title_status VARCHAR(255),                     -- Title status
    transmission VARCHAR(255),                     -- Transmission type
    drive VARCHAR(255),                            -- Drive type
    size VARCHAR(255),                             -- Vehicle size
    type VARCHAR(255),                             -- Vehicle type
    paint_color VARCHAR(255)                       -- Paint color
);
 CREATE TABLE vehicles.media (
    id BIGINT PRIMARY KEY REFERENCES vehicles(id),  -- Primary key and foreign key referencing Vehicles table
    url VARCHAR(255),                              -- URL of the media (e.g., listing URL)
    image_url VARCHAR(255),                        -- URL for the image
    description TEXT                               -- Description of the media
);
