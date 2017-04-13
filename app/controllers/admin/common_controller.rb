class Admin::CommonController < ActionController::Base
  protect_from_forgery with: :exception

  layout 'admin'
end
