# Installation

To install `dbt-bigquery`, use the following command:

```
pip3 install dbt-bigquery
```

If you encounter the following warning, follow the steps described below:

```
WARNING: The script dbt is installed in '/Library/Frameworks/Python.framework/Versions/3.7/bin' which is not on PATH.
Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
NOTE: The current PATH contains path(s) starting with `~`, which may not be expanded by all applications.
```

**For macOS users with zsh shell**, you can open the `~/.zshrc` file, for example, using the Vim editor:

```
vim ~/.zshrc
```

Add the following line to the `.zshrc` file, save and exit:

```
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH"
```

To apply the changes, run the following command:

```
source ~/.zshrc
```

Running the `dbt --version` command should give you the following output:

```
Core:
  - installed: 1.5.1
  - latest:    1.5.1 - Up to date!

Plugins:
  - bigquery: 1.5.1 - Up to date!
```

Please note that this setup may introduce conflicts or potentially disrupt your existing configuration. We recommend exploring Docker or other environment isolation techniques to enable the use of multiple `dbt-core` versions without causing any issues.

If you encounter the following error related to dependency conflicts:

```
ERROR: pip's dependency resolver does not currently take into account all the packages that are installed. This behaviour is the source of the following dependency conflicts.
dbt-duckdb 1.3.4 requires dbt-core~=1.3.0, but you have dbt-core 1.5.1 which is incompatible.
```

For authentication and access to data sources in BigQuery, there are various configuration options available. Please refer to the instructions provided in the following documentation:

[BigQuery Setup - Local OAuth & gcloud Setup](https://docs.getdbt.com/docs/core/connect-data-platform/bigquery-setup#local-oauth-gcloud-setup)