class CollectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :user_id, :slug, :created_at, :updated_at

  attribute :plants do |object|

    customized_plants = []

    object.plants.each do |plant|

      custom_plant = plant.attributes

      custom_plant[:slug] = plant.slug
      custom_plant[:water] = plant.water
      custom_plant[:light] = plant.light
      custom_plant[:formatted_name] = plant.formatted_name

      customized_plants.push(custom_plant)
    end

    customized_plants
  end
end
