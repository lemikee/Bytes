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
require 'test_helper'

class CuisineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
