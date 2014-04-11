class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    request.variant = @user.role.to_sym
    respond_to do |format|
      format.html do |html|
        html.student
        html.staff
        html.admin
      end
    end
  end

end
