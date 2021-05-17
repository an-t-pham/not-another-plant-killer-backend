class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :plants
  
  attribute :collections do |object|

    customized_collections = []

    object.collections.each do |collection|

      custom_collection = collection.attributes

      custom_collection[:slug] = collection.slug
      custom_collection[:plants] = collection.plants

      customized_collections.push(custom_collection)
    end

    customized_collections
  end

end
  