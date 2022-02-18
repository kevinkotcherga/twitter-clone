class Api::V1::PostTweetsController < ApplicationController
  before_action :set_post_tweet, only: [:show, :update, :destroy]

  # GET /post_tweets
  def index
    @post_tweets = PostTweet.all

    render json: @post_tweets
  end

  # GET /post_tweets/1
  def show
    render json: @post_tweet
  end

  # POST /post_tweets
      def create
    @post_tweet = PostTweet.new(post_tweet_params)
    user = User.find(params[:user_id])
    @post_tweet.user_id = user.id

    if @post_tweet.save
      render json: @post_tweet, status: :created, location: api_v1_post_tweets_url(@post_tweet)
    else
      render json: @post_tweet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_tweets/1
  def update
    if @post_tweet.update(post_tweet_params)
      render json: @post_tweet
    else
      render json: @post_tweet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /post_tweets/1
  def destroy
    @post_tweet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_tweet
      @post_tweet = PostTweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_tweet_params
      params.require(:post_tweet).permit(:body, :user_id)
    end
end
