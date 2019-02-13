class LikesController < ApplicationController
<<<<<<< HEAD
=======
  before_action :require_login
>>>>>>> f9a1717fcd482222802c02382cdabb4731fa47cd
  def create
    current_user.like(shout)
    redirect_to root_path
  end

  def destroy
    current_user.unlike(shout)
    redirect_to root_path
  end

  private

  def shout
    @_shout ||= Shout.find(params[:id])
  end
end
