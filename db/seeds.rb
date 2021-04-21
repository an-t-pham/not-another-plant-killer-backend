# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Light.create(level: 1, description: "Prefers indirect sunlight", ideal_location: "Bedroom")
Light.create(level: 2, description: "Thrives in moderate sunlight", ideal_location: "Bathroom")
Light.create(level: 3, description: "Loves bright but indirect sunlight", ideal_location: "Living Room")
Light.create(level: 4, description: "Flourishes in bright sunlight", ideal_location: "Kitchen")

Water.create(level: 1, description: "Water once or twice a month, less in winter")
Water.create(level: 2, description: "Water once a week, much less in winter")
Water.create(level: 3, description: "Water twice a week during summer, once a week during winter")
Water.create(level: 4, description: "Water every two to three days, less in winter")
