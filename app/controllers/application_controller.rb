class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  before_filter :get_banners

  attr_reader :current_user

  def login_required
    unless @current_user.nil?
      @current_user = User.find(session[:user_id]) unless session[:user_id].nil?
    end
  end

  def get_banners
    @footer_banners ||= Banner.find(:all, :order => "created_at")
    true
  end
end
