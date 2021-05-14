class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :plants, :collections
end
