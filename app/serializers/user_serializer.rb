class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :plants, :collections
end
