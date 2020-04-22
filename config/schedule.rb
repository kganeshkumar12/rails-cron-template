set :environment, 'development'

# absolute path of cron log file
set :output, "/abs_path_to_app/log/cron.log"

# daily cron
every :day, :at => '01:00am' do
	# cd to app root, run task file using rbenv with installed version
	command "cd /path_to_app && (RBENV_ROOT=~/.rbenv RBENV_VERSION=2.3.1 RAILS_ENV=development ~/.rbenv/bin/rbenv exec bundle exec rake crontask:backup)"
end

# weekly cron
every :sunday, :at => '01:00am' do
	# cd to app root, run task file using rbenv with installed version
	command "cd /path_to_app && (RBENV_ROOT=~/.rbenv RBENV_VERSION=2.3.1 RAILS_ENV=development ~/.rbenv/bin/rbenv exec bundle exec rake crontask:weekly_newsletter)"
end
