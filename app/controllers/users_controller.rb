class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @company = @user.company
  end

end
