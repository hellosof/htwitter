class TweetsController < ApplicationController

def new
	@tweet = Tweet.new
end

def create
	@tweet = Tweet.new(tweeet_params)
	if @tweet.save
		flash[:success] = "You have created a tweet!"
		redirect_to new_tweet_path
	end

end

def index
	@tweets = Tweet.all 
end


def tweeet_params
	params.require(:tweet).permit(:content)
end

end
