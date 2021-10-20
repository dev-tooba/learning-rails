module DeviseWhitelist 
    extend ActiveSupport::Concern
    included do
        before_action :configure_premitted_parameters, if: :devise_controller?
    end
    def configure_premitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:names])
        devise_parameter_sanitizer.permit(:account_update, keys: [:names])
    end
end