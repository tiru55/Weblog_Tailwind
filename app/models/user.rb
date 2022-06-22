class User < ApplicationRecord
  enum role: { User: 2, Admin: 1}
  has_many :articles
  has_many :comments,dependent: :destroy
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
  