class CollectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :plants, :user_id, :slug
end
