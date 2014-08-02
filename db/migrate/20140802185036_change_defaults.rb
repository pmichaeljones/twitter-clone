class ChangeDefaults < ActiveRecord::Migration
  def change
    change_column_default :users, :location, nil
  end
end
