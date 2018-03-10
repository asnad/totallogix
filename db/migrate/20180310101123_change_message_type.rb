class ChangeMessageType < ActiveRecord::Migration[5.1]
  def self.up
    change_column :contacts, :message, :text
  end
  def self.down
    change_colu zmn :contacts, :message, :string
  end
end
