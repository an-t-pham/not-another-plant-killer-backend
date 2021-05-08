class PlantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :aka, :description, :size_pot, :pet_friendly, :water, :light, :image_url, :slug
end
