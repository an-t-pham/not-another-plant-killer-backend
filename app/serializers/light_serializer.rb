class LightSerializer
    include FastJsonapi::ObjectSerializer
    attributes :level, :description, :ideal_location
  end
  