# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Light.destroy_all
Water.destroy_all
Plant.destroy_all
Collection.destroy_all
User.destroy_all

one = Light.create(level: 1, description: "Prefers indirect sunlight", ideal_location: "Bedroom")
two = Light.create(level: 2, description: "Thrives in moderate sunlight", ideal_location: "Bathroom")
three = Light.create(level: 3, description: "Loves bright but indirect sunlight", ideal_location: "Living Room")
four = Light.create(level: 4, description: "Flourishes in bright sunlight", ideal_location: "Kitchen")

one_w = Water.create(level: 1, description: "Water once or twice a month, less in winter")
two_w = Water.create(level: 2, description: "Water once a week, much less in winter")
three_w = Water.create(level: 3, description: "Water twice a week during summer, once a week during winter")
four_w = Water.create(level: 4, description: "Water every two to three days, less in winter")

lady_palm = Plant.create(
    name: "Broadleaf Lady Palm", 
    aka: "Rhapish Excelsa", 
    description: "Broadleaf lady palms are a strange species of fan palms that actually don’t exist in the wild — they came from Chinese cultivators.They’re exceptionally good indoor houseplants, because they clean toxins from the air. The main four they process are carbon dioxide, formaldehyde, xylene, and ammonia. They’re also easy to care for, making them good for gardening beginners!",
    size_pot: 10,
    pet_friendly: true,
    image_url: "https://dh1muyqdu88ie.cloudfront.net/wp-content/uploads/2017/02/22122638/broadleaf-lady-palm-tree.jpg"
)

lady_palm.light = two
lady_palm.water = four_w

evergreen = Plant.create(
    name: "Chinese Evergreen",
    aka: "Aglaonemas Modestum",
    description: "There are many hybrid varieties of the Chinese evergreen available which have been cultivated over the last century. This is because of their increasing popularity for indoor growers to use them as ornamental plants for room decoration.",
    size_pot: 6,
    pet_friendly: false,
    image_url: "https://cdn.atwilltech.com/flowerdatabase/c/chinese-evergreen-plant-aglaonema-commutatum-PL00208.425.jpg"
)

evergreen.light = two
evergreen.water = three_w

ivy = Plant.create(
    name: "English Ivy",
    aka: "Hedera Helix",
    description: "To the ancient Greeks and Romans, glossy-leafed, dark green ivy was sacred to the god Dionysus (Bacchus in Rome). The pagan druids reflected on ivy in the Christmas carol, The Holly and the Ivy, where the plant represents female divinity. This plant clearly had an impact on ancient cultures but did not stop there. The evergreen vines of this invasive species have covered vast areas of Europe.",
    size_pot: 5,
    pet_friendly: false,
    image_url: "https://thelittlebotanical.com/wp-content/uploads/2019/07/10_JT_010_1000x1000.jpg"
)

ivy.light = two
ivy.water = four_w

snakey = Plant.create(
    name: "Snake Plant",
    aka: "Sansevieria",
    description: "Snake plants are native to Africa and Madagascar so thrive in warmer conditions and love bright light but will be quite happy in partially shaded areas. They also don’t mind a little neglect so you can enjoy their presence without worrying about them needing too much care. It forms a bundle of erect pointy deep green leaves. When they flower they produce a single spike of small white flowers.",
    size_pot: 5,
    pet_friendly: false,
    image_url: "https://res.cloudinary.com/patch-gardens/image/upload/c_fill,f_auto,h_840,q_auto:good,w_840/v1563806745/products/snake-plant-cc1865.jpg"
)

snakey.light = one
snakey.water = one_w

lily = Plant.create(
    name: "Peace Lily",
    aka: "Spathiphyllum",
    description: "Peace lilies, also known as closet plants, are a popular choice for offices and homes. When it comes to indoor plants, peace lily plants are some of the easiest to care for. But, while peace lily plant care is easy, proper growing conditions are still important. Let’s take a look at the care of peace lilies.",
    size_pot: 6,
    pet_friendly: false,
    image_url: "https://www.mydomaine.com/thmb/9aB79USSkhiCVgGyXh1TBSvM7v8=/900x900/filters:fill(auto,1)/1566417254329_20190821-1566417255317-b9314f1d9f7a4668a466c5ffb1913a8f.jpg"
)

lily.light = one
lily.water = four_w

orchid = Plant.create(
    name: "Moth Orchid",
    aka: "Phalaenopsis",
    description: "Moth orchids grow well in centrally heated rooms and have long-lasting flowers produced all year round. They are one of the most popular indoor orchids.",
    size_pot: 5,
    pet_friendly: true,
    image_url: "https://www.whiteflowerfarm.com/mas_assets/cache/image/6/7/d/a/26586.Jpg"
)

orchid.light = one
orchid.water = three_w

dracaena = Plant.create(
    name: "Red Edge Dracaena",
    aka: "Madagascar dragon tree",
    description: "Commonly known as red-edge dracaena or Madagascar dragon tree, Dracaena marginata is an evergreen tree that can grow eight to 15 feet high and three to eight feet wide with proper care. It has stiff purplish-red leaves and slim, curving stalks for trunks. Since it cannot tolerate low light but is not frost hardy, it is often grown indoors. They make excellent houseplants because they are drought tolerant and among the more forgiving dracaena plants.",
    size_pot: 21,
    pet_friendly: false,
    image_url: "https://img.crocdn.co.uk/images/products2/pl/20/00/02/77/pl2000027736.jpg?width=940&height=940"
)

dracaena.light = three
dracaena.water = two_w

fig = Plant.create(
    name: "Weeping Fig",
    aka: "Ficus benjamina",
    description: "Ficus benjamina, commonly known as weeping fig, benjamin fig or ficus tree, and often sold in stores as just ficus, is a species of flowering plant in the family Moraceae, native to Asia and Australia. It is the official tree of Bangkok.",
    size_pot: 20,
    pet_friendly: true,
    image_url: "https://images.bunches.co.uk/products/large/weeping-fig-tree-1.jpg"
)

fig.light = three
fig.water = three_w

aloe = Plant.create(
    name: "Aloe Vera",
    aka: "Aloe Vera",
    description: "Aloe vera is a succulent plant species of the genus Aloe. An evergreen perennial, it originates from the Arabian Peninsula, but grows wild in tropical, semi-tropical, and arid climates around the world. It is cultivated for agricultural and medicinal uses.",
    size_pot: 5,
    pet_friendly: false,
    image_url: "https://www.ikea.com/gb/en/images/products/aloe-vera-potted-plant-aloe__0653978_pe708207_s5.jpg?f=s"
)

aloe.light = four
aloe.water = one_w

jasmine = Plant.create(
    name: "Madagascar Jasmine",
    aka: "Stephanotis floribunda",
    description: "the Madagascar jasmine, waxflower, Hawaiian wedding flower, or bridal wreath is a species of flowering plant in the family Apocynaceae, native to Madagascar.",
    size_pot: 15,
    pet_friendly: false,
    image_url: "https://s3.amazonaws.com/finegardening.s3.tauntoncloud.com/app/uploads/2020/03/12160501/FG193-ig-fragrant-houseplants-1.jpg"
)

jasmine.light = four
jasmine.water = two_w

violet = Plant.create(
    name: "African Violet",
    aka: "Saintpaulia",
    description: "Some indoor gardeners shy away from growing the frilly and elegant African violet (Saintpaulia) because they are intimidated by African violet care. African violet plants do have a few quirks, but learning about them and the proper care of African violets can make growing the plants less intimidating.",
    size_pot: 4,
    pet_friendly: true,
    image_url: "https://africanvioletresourcecenter.com/wp-content/uploads/2020/09/unnamed-111.jpg"
)

# violet.light = four
# violet.water = two_w

# an = User.create(name: "An")
# an.plants = [snakey, violet, lily, orchid, jasmine]
# an.collections.build(name: "Bedroom plants")
# an.save
# bedroom = an.collections.first
# bedroom.plants = [snakey, lily, orchid]