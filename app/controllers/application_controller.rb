class ApplicationController < ActionController::Base
  helper_method :get_categories
  helper_method :get_ads
  before_filter :get_ads
  before_filter :get_categories
  before_filter :get_new_articles
  protect_from_forgery
  layout 'application'

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def get_new_articles
    @new_articles = Article.recent
  end

  def get_categories
    @categories = Category.all
  end

  def get_ads
    @ads = Ad.all
  end
end
