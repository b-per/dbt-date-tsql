# dbt-date-tsql

*This package is still in development*

This [dbt](https://github.com/fishtown-analytics/dbt) package contains macros for supporting [`dbt date`](https://github.com/calogica/dbt-date) on SQL Server and Azure SQL DB.

## Installation

This package needs to be installed along `dbt-date` in your `packages.yml` file, in addition to [`tsql-utils`](https://github.com/dbt-msft/tsql-utils):
```
packages:
  - package: calogica/dbt_date
    version: [">=0.2.0", "<0.3.0"]
  - package: dbt-msft/tsql_utils
    version: 0.6.5
  - git: "https://github.com/b-per/dbt-date-tsql.git"
```

You also need to add the following to `dbt_project.yml` to mention to your dbt project that the `dbt-date` macros are supplemented by the ones from this package (supported time zones are available in `sys.time_zone_info`) and that the dbt-utils macros are complemented by the ones from `tsql-utils`

```
vars:
    'dbt_date:time_zone': 'AUS Eastern Standard Time'
    dbt_utils_dispatch_list: [tsql_utils]
    dbt_date_dispatch_list: [dbt_date_tsql]
```
## Supported/Unsupported functionalities 

This package passed all the integration tests from `dbt-date`. 

The models had to be modified due to unsupported featues in TSQL.
Currently, the following macros are not tested in the integration tests of `dbt-date` and are not compatible yet:
- `dbt_date.get_base_dates(start_date, end_date)`
- `dbt_date.get_fiscal_year_dates(dates, year_end_month, week_start_day, shift_year)`

## Utilisation

See the available macros in the original [`dbt-date`](https://github.com/calogica/dbt-date) repo 