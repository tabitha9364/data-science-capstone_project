# Hotel Booking Revenue Analysis and Prediction

A TechCrush Tech4Africans Data Science Bootcamp capstone project by Group 4. The project analyzes hotel booking patterns, explores revenue drivers with SQL, and trains a linear regression model to estimate booking value.

## Project question

How can hotel and booking characteristics help explain booking value and support revenue, pricing, and operational decisions?

## What is included

- `notebooks/Hotel_Booking_Revenue_Prediction.ipynb`: feature preparation, one-hot encoding, scaling, train/test split, cross-validation, linear regression, and evaluation.
- `data/hotel_bookings_cleaned-2.xlsx`: cleaned dataset used in the supplied analysis (87,237 bookings and 36 columns).
- `sql/HotelBookingAnalysis_SQL.sql`: SQL Server queries on hotel, customer, meal, month, room, and market-segment revenue patterns.
- `reports/Hotel_Booking_Report_With_Values.docx`: the capstone report and documented findings.
- `requirements.txt`: Python dependencies for the notebook.

## Run the notebook

Use Python 3.10 or newer. From the repository root:

```bash
python -m pip install -r requirements.txt
jupyter notebook
```

Open `notebooks/Hotel_Booking_Revenue_Prediction.ipynb` and run the cells from top to bottom. The notebook reads the workbook from `data/` whether Jupyter is started from the repository root or the `notebooks/` directory.

## Run the SQL analysis

The script is written for Microsoft SQL Server. Import `data/hotel_bookings_cleaned-2.xlsx` into the database table `hotel_bookings_cleaned-2`, then execute `sql/HotelBookingAnalysis_SQL.sql`.

## Reported model results

The supplied report records a mean cross-validation R² of 0.8532, test R² of 0.8476, mean absolute error of 79.24, and root mean squared error of 143.88. These are the results documented in the capstone materials; they are not a guarantee of future performance.

## Dataset source

The Hotel Booking Demand dataset was published by [Jesse Mostipak on Kaggle](https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand) and is based on the [Hotel booking demand datasets paper](https://doi.org/10.1016/j.dib.2018.11.126) by Nuno Antonio, Ana de Almeida, and Luis Nunes. The original cleaning notebook records the Kaggle dataset license as CC BY 4.0. Please retain source attribution and review the source terms when redistributing the data.

## Scope and limitations

This repository contains the final modeling notebook, SQL analysis, cleaned workbook, and report provided for the capstone. The separate cleaning notebook and group presentation were not included: the cleaning notebook does not export this supplied 36-column workbook, and the presentation lists all group members by name. Add the presentation only with the group's agreement.

The model evaluates historical booking data. Its scores describe this dataset and modeling setup, not guaranteed performance on future hotel bookings.

## About

Completed as part of the TechCrush Tech4Africans Data Science Bootcamp, February–June 2026.
