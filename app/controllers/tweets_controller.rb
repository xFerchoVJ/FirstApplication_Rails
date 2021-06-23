class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def new
        @tweets = Tweet.new
    end

    def create
        Tweet.create content: params['content']
        redirect_to action: :index
    end

    def edit 
        @tweet = Tweet.find(params["id"])
    end

    def update
        tweet = Tweet.find(params["id"])
        tweet.update content: params['content']
        redirect_to action: :index
    end

    def destroy
        tweet = Tweet.find(params["id"])
        tweet.destroy
        redirect_to action: :index
    end
end