require "test_helper"

class PostTweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_tweet = post_tweets(:one)
  end

  test "should get index" do
    get post_tweets_url, as: :json
    assert_response :success
  end

  test "should create post_tweet" do
    assert_difference('PostTweet.count') do
      post post_tweets_url, params: { post_tweet: { body: @post_tweet.body } }, as: :json
    end

    assert_response 201
  end

  test "should show post_tweet" do
    get post_tweet_url(@post_tweet), as: :json
    assert_response :success
  end

  test "should update post_tweet" do
    patch post_tweet_url(@post_tweet), params: { post_tweet: { body: @post_tweet.body } }, as: :json
    assert_response 200
  end

  test "should destroy post_tweet" do
    assert_difference('PostTweet.count', -1) do
      delete post_tweet_url(@post_tweet), as: :json
    end

    assert_response 204
  end
end
