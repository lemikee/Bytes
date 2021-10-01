# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  body        :string           default(""), not null
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
  validates_presence_of :body, :rating
  validates :user_id, presence: true, uniqueness: { scope: :business_id }
  validate :body_too_short
  validate :body_too_long
  validates :rating, inclusion: { in: (1..5) }
  
  def body_too_long
    errors[:body] << 'Whoops! Try to keep reviews under 5000 characters.' if body && body.length > 5000
  end

  def body_too_short
    errors[:body] << 'Reviews must be more than five characters long.' if body && body.length < 5
  end

  belongs_to :business,
    foreign_key: :business_id,
    class_name: :Business

  belongs_to :author,
    foreign_key: :user_id,
    class_name: :User
end
