class User < ApplicationRecord
  # Include default devise modules. Others available are:

  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :groups
  has_many :posts
end


class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :title, presence: true
end
