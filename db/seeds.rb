# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
20.times do
  Cat.create(birth_date: Faker::Date.between(500.days.ago, Date.today),
  color: %w(black white orange brown).sample, name: Faker::Name.name,
  sex: %w(M F).sample, description: 'ugjkashdkjahsd', user_id: [1, 2, 3, 4].sample )
end
