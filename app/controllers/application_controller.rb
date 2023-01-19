class ApplicationController < ActionController::API
	# https://github.com/rails/rails/blob/v7.0.2.3/actionpack/lib/action_controller/api.rb#L104
  # skip modules that we need to load last
  ActionController::API.without_modules(:Instrumentation, :ParamsWrapper).each do |m|
    include m
  end

  # include what's missing
  include ActionController::ImplicitRender
  include ActionController::Helpers
  include ActionView::Layouts
  include ActionController::Flash
  include ActionController::MimeResponds

  # include modules that have to be last
  include ActionController::Instrumentation
  include ActionController::ParamsWrapper
  ActiveSupport.run_load_hooks(:action_controller_api, self)
  ActiveSupport.run_load_hooks(:action_controller, self)

  respond_to :json, :html

  def redirect_to(options = {}, response_options = {})
    super
  end

end
