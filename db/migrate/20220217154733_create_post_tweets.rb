class CreatePostTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :post_tweets do |t|
      t.string :body

      t.timestamps
    end
  end
end
