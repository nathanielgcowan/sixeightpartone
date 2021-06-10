class AddLikeToCreature < ActiveRecord::Migration[6.0]
  def change
    add_column :creatures, :likes, :string
  end
end
