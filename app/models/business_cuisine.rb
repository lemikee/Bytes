# == Schema Information
#
# Table name: business_cuisines
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  business_id :integer          not null
#  cuisine_id  :integer          not null
#
# Indexes
#
#  index_business_cuisines_on_business_id  (business_id)
#  index_business_cuisines_on_cuisine_id   (cuisine_id)
#
class BusinessCuisine < ApplicationRecord
  belongs_to :business

  belongs_to :cuisine
end
