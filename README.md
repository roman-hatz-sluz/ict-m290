# What is it

- Headless server for teaching Web Frontend Application Development
- Database Handler in NodeJS/Express
- Query Manager Web App for writing queries and viewing data.
- Learn SQL without programming the backend database handler
- Allows sending SQL Queries directly from a static HTML page.
- Create on-demand mySQL databases for students and teachers

# Local Dev

- npm install
- npm run start
- npm run dev

# Setup for start of project

- npm run backup-all-databases: creates backup of all databases
- npm run reset-all-databases: deletes ALL data in all databases
- npm run generate-public-json: creats config file for groups.json. Move this file to srv/groups.json and upload this file to the server
- npm run generate-private-json: move this file to secret folder (also .env file)

# DB Commands

- First run `heroku login`
- npm run list-dbs
- npm run create-30-dbs (takes a while)
- npm run delete-all-db (deletes all databases without further confirmation)
- npm run generate-public-json (generates access data for the ict-290 application, upload the file to the server)
- npm run generate-private-json (caution: only use locally, generates access data for the ict-290 application including passwords. do not upload this file as clear text)

## Further Information

- heroku config --app ict-290 --json
