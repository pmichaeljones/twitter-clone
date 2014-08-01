class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :email, :password_digest
    end
  end
end
