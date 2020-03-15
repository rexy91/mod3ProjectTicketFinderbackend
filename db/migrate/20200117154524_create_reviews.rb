class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.string :username
      t.belongs_to :user, null: true, foreign_key: true
      t.integer :rating
      
      t.timestamps
    end
  end
end
