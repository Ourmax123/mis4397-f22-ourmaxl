class AddFollowedToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :followed, :integer
  end
end
