class ApplicationController < ActionController::Base
  before_action :authenticate_user! # ログイン済ユーザーのみにアクセスを許可し、ログインをしていないユーザーはログイン画面に遷移させます。
  before_action :configure_permitted_parameters, if: :devise_controller? 

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])# devise_parameter_sanitizerは特定のカラムを許容するメソッドです。
  end
end
