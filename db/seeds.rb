# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "01 56 78 90 78",
    category:     "french"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "01 65 09 78 67",
    category:     "belgian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "01 56 78 09 09",
    category:     "french"
  },
    {
    name:         "Le petit cambodge",
    address:      "rue Bichat 75010 Paris",
    phone_number: "01 56 78 09 09",
    category:     "chinese"
  },
    {
    name:         "Cuggini",
    address:      "rue de Paradis 75010 Paris",
    phone_number: "01 56 78 09 09",
    category:     "italian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
