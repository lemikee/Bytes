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
require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
