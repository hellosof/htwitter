class TweetsController < ApplicationController

def new
	@tweet = Tweet.new
end

def create
	@tweet = Tweet.new(tweeet_params)
	@tweet.save
	render 'new'
end

def tweeet_params
	params.require(:tweet).permit(:content)
end

end
