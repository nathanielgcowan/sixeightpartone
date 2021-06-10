class RemoveLikesFromCreature < ActiveRecord::Migration[6.0]
  def change
    remove_column :creatures, :likes, :string
    add_column :creatures, :likes, :integer
  end
end
