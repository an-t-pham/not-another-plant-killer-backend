class CollectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :plants, :user_id, :slug, :created_at, :updated_at
end
