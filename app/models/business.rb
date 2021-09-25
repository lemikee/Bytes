# == Schema Information
#
# Table name: businesses
#
#  id            :bigint           not null, primary key
#  address       :string           not null
#  business_name :string           not null
#  description   :string           not null
#  hours         :string           not null
#  lat           :float            not null
#  long          :float            not null
#  state         :string           not null
#  zip_code      :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  city_id       :integer          not null
#  cuisine_id    :integer          not null
#
# Indexes
#
#  index_businesses_on_address        (address) UNIQUE
#  index_businesses_on_business_name  (business_name)
#
class Business < ApplicationRecord
  validates_presence_of :address, :business_name, :description, :hours, :lat, :long, :state, :zip_code
  validates_uniqueness_of :address

  belongs_to :city

  belong_to :cuisine

  has_many :reviews,
    foreign_key: :business_id,
    class_name: :Review

  has_many :cuisines,
    foreign_key: :business_id,
    class_name: :Review

  has_many :business_cuisines,
    foreign_key: :cuisine_id,
    class_name: :BusinessCuisine
end
