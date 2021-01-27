class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # 元々ある設定の行ですが、そのまま残してください
  before_action :set_current_user

  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
end