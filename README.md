# Hotel Booking Revenue Analysis and Prediction

An end-to-end hospitality analytics capstone by Group 4, completed during the TechCrush Tech4Africans Data Science Bootcamp. The project studies hotel booking patterns, answers revenue questions with SQL, and uses a linear regression model to estimate booking value.

## Project overview

Hotel operators need to understand how booking and customer characteristics relate to revenue. This project uses the Hotel Booking Demand dataset to examine those patterns and evaluate whether the available booking features can help predict booking value.

The analysis includes City Hotel and Resort Hotel bookings. The cleaned workbook contains 87,237 records and 36 fields.

## Questions explored

- Which assigned room types and customer segments have the highest average booking value?
- How do booking volume and total booking value vary by arrival month?
- How do hotel type, meal plan, and market segment relate to revenue?
- How does length of stay relate to average booking value?
- How well can a linear regression model predict booking value from booking features?

## Workflow and tools

The project uses Python, Jupyter, pandas, NumPy, scikit-learn, and Microsoft SQL Server. The modeling notebook prepares features, one-hot encodes categorical variables, scales numeric variables, creates a train/test split, runs cross-validation, fits a linear regression model, and evaluates its predictions.

The SQL script contains nine grouped queries for booking volume and revenue comparisons. The workbook is supplied in cleaned form; the report documents the data preparation and project findings.

## Repository contents

```text
data/
  hotel_bookings_cleaned-2.xlsx
notebooks/
  Hotel_Booking_Revenue_Prediction.ipynb
reports/
  Hotel_Booking_Report_With_Values.docx
sql/
  HotelBookingAnalysis_SQL.sql
requirements.txt
```

## Run the notebook

Use Python 3.10 or newer. From the repository root, install the dependencies and launch Jupyter:

```bash
python -m pip install -r requirements.txt
jupyter notebook
```

Open `notebooks/Hotel_Booking_Revenue_Prediction.ipynb` and run the cells from top to bottom. The notebook looks for the workbook in `data/` when launched from the repository root, and also supports launching from the `notebooks/` directory.

## Run the SQL analysis

The SQL script is written for Microsoft SQL Server:

1. Run the `CREATE DATABASE` and `USE` statements at the top of `sql/HotelBookingAnalysis_SQL.sql`.
2. Import `data/hotel_bookings_cleaned-2.xlsx` into the `HotelBookingAnalysis` database using SQL Server's import tools. Name the table `hotel_bookings_cleaned-2`.
3. Run the remaining queries in the SQL script.

## Reported model results

The supplied report records the following results:

| Metric | Reported result |
| --- | ---: |
| Mean cross-validation R² | 0.8532 |
| Test R² | 0.8476 |
| Mean absolute error | 79.24 booking-value units |
| Root mean squared error | 143.88 booking-value units |

These are the results documented in the project materials. They describe this dataset and modeling setup, and should not be treated as a guarantee of performance on future bookings.

## Dataset source

The Hotel Booking Demand dataset was published by [Jesse Mostipak on Kaggle](https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand) and is based on the [Hotel booking demand datasets paper](https://doi.org/10.1016/j.dib.2018.11.126) by Nuno Antonio, Ana de Almeida, and Luis Nunes. The original cleaning notebook records the Kaggle dataset license as CC BY 4.0. Retain source attribution and review the source terms when redistributing the data.

## Limitations

The model uses historical booking records and a single linear regression approach. Hotel pricing and booking behavior can change over time, and factors outside the supplied dataset may affect revenue. The reported metrics have not been independently re-evaluated as part of this README update.

## About

Completed as part of the TechCrush Tech4Africans Data Science Bootcamp, February–June 2026.
