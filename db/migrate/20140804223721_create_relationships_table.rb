class CreateRelationshipsTable < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :follower_id, :leader_id
      t.timestamps
    end
  end
end
