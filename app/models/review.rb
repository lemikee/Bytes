# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  content     :string           not null
#  rating      :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  business_id :integer          not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_reviews_on_business_id              (business_id)
#  index_reviews_on_user_id                  (user_id)
#  index_reviews_on_user_id_and_business_id  (user_id,business_id) UNIQUE
#
class Review < ApplicationRecord
  validates_presence_of :content, :rating
  validates :user_id, presence: true, uniqueness: { scope: :business_id }
  validate :content_too_short
  validate :content_too_long

  def content_too_long
    errors[:content] << 'Whoops! Try to keep reviews under 5000 characters.' if content && content.length > 5000
  end

  def content_too_short
    errors[:body] << 'Reviews must be more than five characters long.' if content && content.length < 5
  end

  belongs_to :business

  belongs_to :user
end
