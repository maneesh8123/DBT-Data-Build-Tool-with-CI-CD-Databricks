### How use this repo
1 - Clone the Rep
2   install the requirements.txt using pip install -r requirements.txt
3   Go to dbtelt (cd dbtelt), which is the dbt project, where you can see the project structure and folders in dbt. 
    Then make changes to profiles.yml based on your requirements, such as the Databricks host, HTTP path, token, catalog, schema, etc.
Commands : 
  ##### dbt run - run all the dbt model
  ##### dbt run -s or --select modelName - to run a specific model
  ##### dbt run -s or - -select “models/bronze/” - run only bronze models
  ##### dbt test - to run dbt tests
  ##### dbt snapshot - to run snapshots
  ##### dbt build - will all the models , test ,snapshots

  
