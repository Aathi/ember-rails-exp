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
end
