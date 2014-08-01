class Createstatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :body
      t.integer :user_id
      t.timestamps
    end

    add_column :users, :created_at, :datetime
    add_column :users, :updated_at, :datetime

  end
end
