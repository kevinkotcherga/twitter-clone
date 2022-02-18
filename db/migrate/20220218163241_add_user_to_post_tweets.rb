class AddUserToPostTweets < ActiveRecord::Migration[7.0]
  def change
    add_reference :post_tweets, :user, null: false, foreign_key: true, type: :uuid
  end
end
