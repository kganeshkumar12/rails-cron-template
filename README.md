This template can be used as a quick starter for setting up crontasks using whenever gem in RoR.
Whenever is a Ruby gem which allows to generate and deploy cron tasks into system/server crontab.


### Template Structure

1, config/scheduler.rb - will contain the cron tasks via rake function calling statements

2, lib/tasks/crontask.rake - will contain the definition of task functions

3, log/cron.log - will be used to store the logs during cron run


### Steps to setup cron

1, Install whenever

2, Load/create schedule.rb and write your cron tasks

3, Define the tasks in crontask.rake file

4, Update system/server crontab with cron tasks


### 1, Install whenever
by installing in system/server

```sh
$ gem install whenever
```
Or by including in gemfile

```ruby
gem 'whenever'
```


### 2, Load/create schedule.rb

In order for whenever gem to use the existing schedule.rb, use `whenever --load-file` command or 
create a new schedule.rb file using `wheneverize` command.

```sh
$ cd /app-path
$ bundle exec whenever --load-file config/my_schedule.rb
```

OR

```sh
$ cd /app-path
$ bundle exec wheneverize .
```

Now in schedule.rb, write your lists of tasks to be run.


### 3, Define tasks

In crontask.rake, define the tasks under namespaces and functions.


### 4, Update system/server crontab

`whenever` command reads the tasks written in schedule.rb file and will convert to cron specific syntax. Then it will show in the CLI console if no issues.

```sh
$ bundle exec whenever
```

Then, using `whenever --update-crontab` command, update the system crontab with the converted cron tasks.

```sh
$ whenever --update-crontab
```