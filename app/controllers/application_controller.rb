class ApplicationController < ActionController::Base
  # before_action :basic_auth,  if: :production?

  # private

  # def basic_auth
  #   authenticate_or_request_with_http_basic do |username, password|
  #     username == Rails.application.credentials[:basic_auth][:user] &&
  #     password == Rails.application.credentials[:basic_auth][:pass]
  #   end
  # end
  
  def production?
    Rails.env.production?
  end

#  before_action :authenticate_user!
 before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [
    :nickname,
    :email,
    :password,
    :familyname,
    :familyname_kana,
    :firstname,
    :firstname_kana,
    :bairthday])
    end
end
