


 installation

 pip3 install dbt-bigquery


if you see the following warning follow the described steps

WARNING: The script dbt is installed in '/Library/Frameworks/Python.framework/Versions/3.7/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
  NOTE: The current PATH contains path(s) starting with `~`, which may not be expanded by all applications.


For mac if using zsh you can open the file ~/.zshrc, for example using vim editor
vim ~/.zshrc

add this line to this zshrc file, save and exit
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH"

apply the changes using
source ~/.zshrc


if you run dbt --version command you should get the same output. 
Core:
  - installed: 1.5.1
  - latest:    1.5.1 - Up to date!

Plugins:
  - bigquery: 1.5.1 - Up to date!




Also this can introduce other conflicts like breaking your other setup
Later we will switch to docker or some other env isolation technique to be able to use multiple dbt-core versions without introducing a problem.


ERROR: pip's dependency resolver does not currently take into account all the packages that are installed. This behaviour is the source of the following dependency conflicts.
dbt-duckdb 1.3.4 requires dbt-core~=1.3.0, but you have dbt-core 1.5.1 which is incompatible.