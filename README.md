

= deploying to heroku



rake assets:clean assets:precompile

git add .

git commit -m 'Acurate messages please'

git push origin master

git push heroku master

-----
TO RESTART HEROKU SERVER:

heroku restart

if not working, then make a change, commit it and then push to master & heroku


------
TO RUN DELAYED JOBS IF THEY ARE QUEUED UP ON HEROKU

heroku run bin/delayed_job start

TO RUN DELAYED JOBS IF THEY ARE QUEUED LOCALLY

bin/delayed_job start