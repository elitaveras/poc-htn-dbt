Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


# Steps to install dbt-core/athena in a clean environment 

0. Recommend this to be done in it's own directory

1. Create/Activate source environment 

	`python -m venv .`
	`source <path>/activate`

2. Run `pip install dbt-athena-community`

3. Run `dbt init` this will create a new dbt project and build the profiles.tml file, template will be provided but basically it is the output of terraform repo

4. Start building first model by going into dbt-project folder and into the models section, for now I will build a simple example using the test.csv data uploaded before

5. Once ready run `dbt run`, remember to profide the profiles.yml file using flag --profiles-dir <path-here>

6. See lineage `dbt docs generate --profiles-dir <path-here>`

7. Local server for UI `dbt docs serve --port 8001 --profiles-dir <path-here>`