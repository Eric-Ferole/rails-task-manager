# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Task.destroy_all

puts 'Creating tasks...'
tasks_attributes = [
  {
    title:   'Menage',
    details: 'Cuisine, salle de bain, chambre à coucher',
    completed: false
  },
  {
    title:   'Payer les fournisseurs',
    details: 'Turko, Isabelle, Caroline, Bjorn, Blain Joyal',
    completed: false
  },
  {
    title:   'Faire l\'épicerie',
    details: 'Poulet, crevettes, laitue, salade',
    completed: false
  }
]
Task.create!(tasks_attributes)
puts 'Finished!'
