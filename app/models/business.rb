# == Schema Information
#
# Table name: businesses
#
#  id            :bigint           not null, primary key
#  address       :string           not null
#  business_name :string           not null
#  city          :string           not null
#  latitude      :float
#  longitude     :float
#  phone         :string
#  price         :string
#  state         :string           not null
#  website       :string
#  zip_code      :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_businesses_on_address        (address) UNIQUE
#  index_businesses_on_business_name  (business_name)
#
class Business < ApplicationRecord
  validates_presence_of :business_name, :address, :city, :state, :zip_code
  validates_uniqueness_of :address

  def average_rating
    reviews.average(:rating)
  end

  has_many :reviews,
    foreign_key: :business_id,
    class_name: :Review

  has_many :business_categories,
    foreign_key: :business_id,
    class_name: :BusinessCategory
  has_many :categories,
    through: :business_categories,
    source: :category

  has_one_attached :photo
  has_many_attached :pics
end
