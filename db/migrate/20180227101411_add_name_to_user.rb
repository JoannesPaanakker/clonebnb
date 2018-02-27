class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :language, :string, default: "Swahili"
    add_column :users, :currency, :string, default: "euro"
  end
end
