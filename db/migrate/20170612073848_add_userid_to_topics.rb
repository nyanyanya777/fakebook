class AddUseridToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :user_id_integer, :string
  end
end
