class CreateBooksTable < ActiveRecord::Migration
  def up
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :no_of_pages 
      t.integer :isbn, :default => "N/A"
    end
  end

  def down
    drop_table :books
  end
end
