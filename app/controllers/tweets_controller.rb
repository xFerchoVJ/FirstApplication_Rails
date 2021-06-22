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
end