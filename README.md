# Project: Rating

## Description of Project
We need a PHP solution to parse this HTML file uploaded by our family members. Each file will follow the same format, but the number of records inside may vary. Parsed data will be saved into a PostgreSQL database.

## Requirements
* validate file size
* validate by HTML MIME type
* temporary storage can be used but must be terminated after successful storage
* delivered file needs to independently function without the assistance of frameworks
* vanilla PHP is the only acceptable approach
* no frameworks to be used (like Laravel or Slim)

We need to store all **rating** records on our personal budget from month to month. We want to store them in a Postgres DB with the following column structure:

|Reference|Report Date|Type|ChesterPA|AllenTX|AtlantaGA|
|:-:|:-:|:-:|:-:|:-:|:-:|
|*VARCHAR(9)|*MM/DD/YYYY|VARCHAR(255)|VARCHAR(255)|VARCHAR(255)|VARCHAR(255)|

* From month to month we will not know how many inquiry records we'll have. Could be 1. Could 30. Could be 0.
* If 0, no record should be created. If ≤1, then create the corresponding record(s) in the DB.

*must always be present

**may sometimes be blank

***postgres db available upon request

## Data Table Selector
`#CreditScore > table.re-even-odd.rpt_content_table.rpt_content_header.rpt_table4column`

## Screenshot of Data Table in HTML
![Table Appears in HTML](file%20to%20be%20parsed%20-%20rating.png?raw=true "Table Appears in HTML")

## Data Once Inputed to Postgres
|Reference|Report Date|Type|ChesterPA|AllenTX|AtlantaGA|
|:-:|:-:|:-:|:-:|:-:|:-:|
BR54898847|05/23/2024|Credit Score|583|606|604|
BR54898847|05/23/2024|Lender Rank|Unfavorable|Fair|Fair|
BR54898847|05/23/2024|Score Scale|300-850|300-850|300-850|
BR54898847|05/23/2024|Risk Factors|The date that you opened your oldest account is too recent Your oldest account is still too recent. A credit file containing older accounts will have a positive impact on your credit score because it demonstrates that you are experienced managing credit. You have too many collection agency accounts that are unpaid Some collection agencies report account information to credit bureaus just like lenders do. Your credit file has too many accounts that have been sent to a collection agency and remain unpaid. Unpaid collection accounts in your file can have a significant negative impact on your credit score. You have too many delinquent or derogatory accounts You have had too many accounts with payments that are at least 30 days late and/or on which a lender has reported a derogatory status. Late payments are a proven indicator of increased risk. People with late payments are at risk of being overextended, putting existing credit with lenders at risk. Lack of sufficient relevant real estate account information A real estate loan can be a first mortgage, a home equity loan, or home equity line of credit. The VantageScore credit score model relies on information in your credit files at the three national credit reporting companies (AtlantaGA, AllenTX and ChesterPA) to generate your score. Your credit file does not contain enough credit behavior information about your real estate accounts. A mix of different types of open and active credit accounts, including real estate loans, can have a positive impact on your credit score.|The date that you opened your oldest account is too recent You have too many collection agency accounts that are unpaid You have too many delinquent or derogatory accounts The total of your delinquent or derogatory account balances is too high|BLANK|
