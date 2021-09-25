# == Schema Information
#
# Table name: cuisines
#
#  id         :bigint           not null, primary key
#  cuisine    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_cuisines_on_cuisine  (cuisine) UNIQUE
#
class Cuisine < ApplicationRecord
  validates_presence_of :cuisine
  validates_uniqueness_of :cuisine

    has_many :business_cuisines,
      foreign_key: :business_id,
      class_name: :BusinessCuisine
end
