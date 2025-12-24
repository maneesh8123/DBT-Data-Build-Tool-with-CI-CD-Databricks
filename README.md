![dbt Logo](https://www.getdbt.com/ui/img/logos/dbt-logo-full.svg)


This is a dbt project that is primarily integrated with Databricks Unity Catalog to perform data transformations from source to destination. The project also includes an implemented CI/CD pipeline and a customized dbt setup for both development and production environments.

This document link explains: [DBT (Data Build Tool) with CI/CD Document](https://docs.google.com/document/d/1KIDqiBcaEB7KXpbtIJQlz__sNJuQodG-4KIhIQTX6bM/edit?usp=sharing)

What dbt is

How to install dbt and configure it with Databricks

How to set up Databricks for this project

The dbt project structure

Models, tests, and snapshots

Implementation of Slowly Changing Dimension (SCD) Type 2 using dbt snapshots

How to use the analyses folder

How to work with dbt seeds




### How use this repo
1   Install a Python version that is compatible with dbt.
2  Clone the Rep
3   install the requirements.txt using pip install -r requirements.txt
4   Go to dbtelt (cd dbtelt), which is the dbt project, where you can see the project structure and folders in dbt. 
    Then make changes to profiles.yml based on your requirements, such as the Databricks host, HTTP path, token, catalog, schema, etc.
5 run : dbt debug to checks the connection works fine.
Commands : 
  ##### dbt run - run all the dbt model
  ##### dbt run -s or --select modelName - to run a specific model
  ##### dbt run -s or - -select “models/bronze/” - run only bronze models
  ##### dbt test - to run dbt tests
  ##### dbt snapshot - to run snapshots
  ##### dbt build - will all the models , test ,snapshots
  ##### dbt run --target dev - will run dev transformation
  ##### dbt run --target prod - will run dev transformation
        dbt test --target prod
        dbt snapshot --target prod


  
