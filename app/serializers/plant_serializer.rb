class PlantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :aka, :description, :size_pot, :pet_friendly, :water, :light
end
