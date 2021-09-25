# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  birthday        :date             not null
#  email           :string           not null
#  first_name      :string           not null
#  last_name       :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  zip_code        :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email          (email) UNIQUE
#  index_users_on_session_token  (session_token) UNIQUE
#
class User < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :birthday, :password_digest, :session_token, :zip_code
  validates_uniqueness_of :email, :session_token

  has_many :reviews,
    foreign_key: :user_id,
    class_name: :Review
end
