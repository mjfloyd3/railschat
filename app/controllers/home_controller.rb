class HomeController < ApplicationController
	def index
    session[:chats] ||= []
 
    @users = User.all.where.not(id: current_user)
    @chats = Chat.includes(:users, :messages).find(session[:chats])
  end
end
