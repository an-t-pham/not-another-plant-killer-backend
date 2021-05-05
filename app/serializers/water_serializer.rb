class WaterSerializer
    include FastJsonapi::ObjectSerializer
    attributes :level, :description
  end
  