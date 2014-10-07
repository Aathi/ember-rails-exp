class Api::SpeakersController < ApplicationController
	def index
		render json: Speaker.all
	end
	def show
		render json: Speaker.find(params[:id])
	end
	def destroy
		speaker = Speaker.find(params[:id])
		speaker.destroy
		head 204
	end
	def create
		speaker = Speaker.new(speaker_params)
		if speaker.save
			render json: speaker, status: 201, location: speaker
		else
			render json: speaker.errors, status: 422
		end
	end

	private
		def speaker_params
			params.require(:speaker).permit(:name)
		end
end
