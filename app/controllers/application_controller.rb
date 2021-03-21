class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) #nameのデータ操作を許可するアクションメソッドが指定されています。 sign_upアクションを呼ぶときにはnameのデータの操作が許可される。
  end


end
