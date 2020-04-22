namespace :crontask do

	########################################################################################################################
	
	desc "crontask invoked"

	task backup: :environment do
		desc "backup initiated"
		# call to custom backup function
		backup(db: true, files: true)
		desc "backup completed"
	end

	task weekly_newsletter: :environment do
		desc "weekly newsletter send - initiated"
		# call to custom newsletter function
		newsletter(subscribed_only: true)
		desc "weekly newsletter send - completed"	
	end

	########################################################################################################################

end
