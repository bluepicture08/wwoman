class Offline < ActiveRecord::Base
    has_many :offline_replies
    belongs_to :tutor
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
    
end
