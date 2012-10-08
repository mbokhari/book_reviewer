class CreateReviewsTable < ActiveRecord::Migration
  def up
    create_table(:reviews) do |t|
      t.string :name
      t.text :body
      t.datetime :date
      t.references :book
    end
    
    add_index :reviews, :book_id
  end

  def down
  end
end
