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
require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
