# == Schema Information
#
# Table name: business_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  business_id :integer          not null
#  category_id :integer          not null
#
# Indexes
#
#  index_business_categories_on_business_id_and_category_id  (business_id,category_id) UNIQUE
#
class BusinessCategory < ApplicationRecord
  validates_presence_of :business_id, :category_id

  belongs_to :business

  belongs_to :category
end
