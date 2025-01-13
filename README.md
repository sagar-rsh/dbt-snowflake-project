# DBT-Snowflake-Project

## Project Overview

This project demonstrates the development of an ELT pipeline using dbt (data build tool), Snowflake, and Apache Airflow. The pipeline processes and transforms the TPC-H dataset (provided by Snowflake), showcasing end-to-end data engineering capabilities, including data modelling, orchestration, and warehouse optimisation.

## Tech Stack

- **dbt**: Used for data transformation and modelling.
- **Snowflake**: Cloud data warehouse for storing and processing data.
- **Apache Airflow**: Workflow orchestration to automate and monitor the ELT pipeline.
- **Astronomer-Cosmos**: Simplifies the integration of dbt with Airflow.
- **Python**: Supporting scripts and integration.

## Project Workflow

1. **Extract**: Data is sourced from Snowflake's TPC-H dataset.
2. **Load**: Raw data is loaded into staging tables in the Snowflake warehouse.
3. **Transform**: dbt models are used to clean, transform, and aggregate data for analysis.
4. **Orchestrate**: Airflow, with Astronomer-Cosmos, schedules and automates the pipeline.

### Architecture

```plaintext
Snowflake TPC-H Dataset --> Raw Tables --> dbt Transformations --> Staging Tables --> Fact Tables --> Aggregated Models --> Loaded in Snowflake --> Dashboards (not implemented)
```

### dbt Components

- **Models**:
  - **Staging**: Raw data tables.
  - **marts**: Intermediate(dimension) tables and fact tables.
- **Macros**: Encapsulates business logic for reusable calculations and transformations.
- **Data Quality Checks**: Tests for uniqueness, null values, and relationships to ensure data integrity.

## Prerequisites

- Python 3.8+
- dbt-core, dbt-snowflake installed (via pip)
- Docker
- Access to a Snowflake account
- [Astro CLI](https://www.astronomer.io/docs/astro/cli/install-cli/)
