require "test_helper"

class MessageTweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message_tweet = message_tweets(:one)
  end

  test "should get index" do
    get message_tweets_url, as: :json
    assert_response :success
  end

  test "should create message_tweet" do
    assert_difference('MessageTweet.count') do
      post message_tweets_url, params: { message_tweet: { body: @message_tweet.body } }, as: :json
    end

    assert_response 201
  end

  test "should show message_tweet" do
    get message_tweet_url(@message_tweet), as: :json
    assert_response :success
  end

  test "should update message_tweet" do
    patch message_tweet_url(@message_tweet), params: { message_tweet: { body: @message_tweet.body } }, as: :json
    assert_response 200
  end

  test "should destroy message_tweet" do
    assert_difference('MessageTweet.count', -1) do
      delete message_tweet_url(@message_tweet), as: :json
    end

    assert_response 204
  end
end
