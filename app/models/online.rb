class Online < ActiveRecord::Base
    has_many :online_replies
    belongs_to :tutor
end
