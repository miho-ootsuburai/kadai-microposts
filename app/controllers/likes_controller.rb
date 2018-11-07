class LikesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = user.find(params[:favorite_id])
    current_user.favorite(user)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to user
  end

  def destroy
    user user.find(params[:favorite_id])
    current_user.unfavorite(user)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to user
  end
end
