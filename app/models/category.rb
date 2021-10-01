# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_name  (name) UNIQUE
#
class Category < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :business_categories,
    foreign_key: :category_id,
    class_name: :BusinessCategory

  has_many :businesses,
    through: :business_categories,
    source: :business
end
