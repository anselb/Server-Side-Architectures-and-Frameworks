class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validates :is_signed_in, inclusion: [true, false]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
