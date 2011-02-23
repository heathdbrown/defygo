class AddRegisteredIpToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :registered_ip, :string
    add_column :users, :last_visit, :timestamp
  end

  def self.down
    remove_column :users, :last_visit
    remove_column :users, :registered_ip
  end
end
