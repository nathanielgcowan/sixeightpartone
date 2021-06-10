class RedoCreature < ActiveRecord::Migration[6.0]
  def change
    remove_column :creatures, :likes, :integer
    add_column :creatures, :likes, :string
  end
end
