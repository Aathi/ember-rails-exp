namespace :db do
	task populate: :environment do
		Speaker.destroy_all
		def random_speaker
			['hello', 'world', 'lorem', 'ipsum', 'cassie'].sample
		end
		def random_presentation
			['hello', 'yo', 'another', 'minaj'].sample
		end
		15.times do 
			speaker = Speaker.create(name: random_speaker)
			3.times do
				speaker.presentations.create(title: random_presentation)
			end
		end
	end
end
