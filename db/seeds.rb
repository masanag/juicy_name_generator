# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fn = open('db/names.txt')
fn.each do |line|
  line.chomp!
  if line
    name = Name.create(name: line)
    p name
  end
end

fa = open('db/adjectives.txt')
fa.each do |line|
  line.chomp!
  if line
    adjective = Adjective.create(name: line)
    p adjective
  end
end
