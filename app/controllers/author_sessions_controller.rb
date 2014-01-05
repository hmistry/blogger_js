class AuthorSessionsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    if login(params[:author][:email], params[:author][:password])
      redirect_back_or_to(articles_path, notice: 'Logged in successfully.')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:authors, message: 'Logged out!')
  end
end
