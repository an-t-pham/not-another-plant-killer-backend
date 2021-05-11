class PlantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :aka, :description, :size_pot, :pet_friendly, :water, :light, :image_url, :slug, :formatted_name

  def formatted_name
    object.name.capitalize
  end
end
