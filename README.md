# README

Thanks for viewing my Rails App!!

please `git clone https://github.com/GuiMilanez/App_Audition.git` into your directory and `cd` into it

run `rails db:migrate db:seed` in order to create the App seeds in the database


Testing:
for testing, I've created the file spec/models/app_spec.rb

please run `rspec -fd` to test results

Here are the instructions to use the query:

JSON file will appear at the endpoint /apps.json

It has a pagination of 200 `apps` per page
to view pages, please use `page=(page number)`
example: http://localhost:3000/apps.json?page=1
example2: http://localhost:3000/apps.json?page=4

to access a range of IDs, please use the terms `start_id=(id number)` and `end_id=(id number)`
example: http://localhost:3000/apps.json?start_id=11&end_id=456

to sort, use `order=asc` or `order=desc`
example: http://localhost:3000/apps.json?order=desc
example2: http://localhost:3000/apps.json?start_id=11&end_id=456&order=asc

to limit results, use `max=number of results)`
example: http://localhost:3000/apps.json?max=3
example2: http://localhost:3000/apps.json?start_id=11&end_id=456&order=asc&max=45

