class CreatureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :description, :likes, :skills
end
