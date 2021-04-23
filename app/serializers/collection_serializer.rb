class CollectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :plants, :user_id
end
