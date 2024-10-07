class UserController < ApplicationController
  def index
    render(:templates => 'user/index')
  end

  def show
    user = params.fetch(:id)
    @the_user = User.where(user_id: user.id)
    render(:templates => 'user/show')
  end

  def edit
    render(:templates => 'user/edit')
  end

end
