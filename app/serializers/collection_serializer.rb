class CollectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :plants
end
