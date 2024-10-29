# Used-Vehicle-Data-Cleaning-and-Database-Management

## Overview
This repository contains a comprehensive project focused on cleaning, standardizing, and managing a large dataset of used vehicles sourced from Craigslist (via Kaggle). The dataset includes over 426,880 vehicle listings with attributes like price, year, manufacturer, odometer reading, VIN, and geographical information. The goal of the project is to preprocess the raw data, organize it into a relational structure, and store it in a PostgreSQL database for efficient querying and analysis.

## Table of Contents
- [Overview](#overview)
- [Dataset](#dataset)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Data Cleaning](#data-cleaning)
- [Database Schema](#database-schema)
- [Data Insertion](#data-insertion)
- [Results](#results)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)

## Dataset
The dataset is sourced from Kaggle and contains the following key features:
- **Price**: Price of the vehicle.
- **Year**: Year of manufacture.
- **Odometer**: Vehicle mileage.
- **VIN**: Unique vehicle identification number.
- **Location**: Region, state, county, latitude, and longitude.
- **Vehicle Details**: Manufacturer, model, fuel type, transmission, and more.
- **Media**: URLs for images and descriptions.

For more details, visit the dataset [here](https://www.kaggle.com/datasets/austinreese/craigslist-carstrucks-data).

## Project Structure
- **Data-cleaning.ipynb**: Jupyter Notebook for cleaning and preprocessing the dataset.
- **Vehicles.ipynb**: Python script for data transformation and insertion into the PostgreSQL database.
- **vehicles.sql**: SQL script to create tables and define schema in PostgreSQL.
- **Report on Used-Vehicles-Dataset.pdf**: Detailed report outlining the project, data issues, and database design.

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/Used-Vehicle-Data-Cleaning-and-Database-Management.git
   cd Used-Vehicle-Data-Cleaning-and-Database-Management
   ```
2. Install required Python packages:
   ```bash
   pip install -r requirements.txt
   ```
3. Set up a PostgreSQL database and run the SQL script to create the necessary tables:
   ```bash
   psql -U yourusername -d yourdatabase -f vehicles.sql
   ```
4. Update database credentials in the Python scripts before running them.

## Data Cleaning
The data cleaning process involves:
- Handling missing values using median/mode imputation.
- Converting data types to match the schema.
- Standardizing columns for consistent formatting.
- Detecting and fixing data inconsistencies.

## Database Schema
The dataset is normalized into multiple tables:
- **Vehicles**: Stores primary vehicle details.
- **Region**: Contains geographical data.
- **Manufacturer**: Stores manufacturer and model details.
- **Vehicle Details**: Additional vehicle attributes like fuel type and transmission.
- **Media**: URLs for images and descriptions.

## Data Insertion
The cleaned data is inserted into the PostgreSQL database using Python (pandas and SQLAlchemy). Scripts include error handling to manage potential issues during insertion.

## Results
- Successfully transformed and stored the dataset in PostgreSQL.
- Achieved efficient data retrieval and querying capabilities.

## Technologies Used
- **Python**: Data cleaning and transformation.
- **pandas, SQLAlchemy**: Data manipulation and database interaction.
- **PostgreSQL**: Relational database for data storage.
- **Jupyter Notebook**: Data cleaning and analysis.

## Contributing
Feel free to fork this repository, make updates, and create a pull request. Contributions are welcome!

## License
This project is licensed under the MIT License.
```

Feel free to customize it to match your specific needs or preferences!
