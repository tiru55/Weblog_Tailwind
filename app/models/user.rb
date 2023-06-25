class User < ApplicationRecord
  enum role: { User: 2, Admin: 1}
  has_many :articles
  has_many :comments,dependent: :destroy
  has_one_attached :avatar
  has_one_attached :cover_photo
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:timeoutable
end
  