class Api::SpeakersController < ApplicationController
	def index
		render json: Speaker.all
	end
	def show
		render json: speaker
	end
	def destroy
		speaker.destroy
		head 204
	end
	def create
		new_speaker = Speaker.new(speaker_params)
		if new_speaker.save
			render json: new_speaker, status: 201
		else
			render json: new_speaker.errors, status: 422
		end
	end
	def update
		new_speaker = speaker.update_attributes(speaker_params)
		if new_speaker
			render json: new_speaker
		else
			render json: "no content", status: 204
		end
	end

	private
	def speaker
		Speaker.find(params[:id])
	end
	def speaker_params
		params.require(:speaker).permit(:name)
	end

end
