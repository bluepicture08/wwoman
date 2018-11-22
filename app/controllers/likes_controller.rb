class LikesController < ApplicationController
    def like_toggle
        like = Like.find_by(user_id: currnet_user.id, offline_id = params[:offline_id])
        
        if like.nil?
            Like.create(user_id: currnet_user.id, offline_id: params[:offline_id])
        else
            like.destroy
        end
    end 
    
    redirect_to :back
end
