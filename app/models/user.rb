class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :qnas
  has_many :likes
  has_many :liked_offlines, through: :likes, source: :offlines
  
  def is_like?(offline)
    Like.find_by(user_id: self.id, offline_id: offline.id).present?
  end
end
