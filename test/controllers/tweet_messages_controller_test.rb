require "test_helper"

class TweetMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet_message = tweet_messages(:one)
  end

  test "should get index" do
    get tweet_messages_url, as: :json
    assert_response :success
  end

  test "should create tweet_message" do
    assert_difference('TweetMessage.count') do
      post tweet_messages_url, params: { tweet_message: { body: @tweet_message.body } }, as: :json
    end

    assert_response 201
  end

  test "should show tweet_message" do
    get tweet_message_url(@tweet_message), as: :json
    assert_response :success
  end

  test "should update tweet_message" do
    patch tweet_message_url(@tweet_message), params: { tweet_message: { body: @tweet_message.body } }, as: :json
    assert_response 200
  end

  test "should destroy tweet_message" do
    assert_difference('TweetMessage.count', -1) do
      delete tweet_message_url(@tweet_message), as: :json
    end

    assert_response 204
  end
end
