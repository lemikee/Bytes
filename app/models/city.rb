# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  city       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_cities_on_city  (city)
#
class City < ApplicationRecord
  validates_presence_of :city

  has_many :businesses,
    foreign_key: :city_id,
    class_name: :Business
end
