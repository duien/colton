class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_request_format
  
  private
  
  def set_request_format
    #if is_mobile_device?
      # Future support for device specific formats
      #request.format = @mobile_device.downcase.to_sym
      request.format = :iphone
    #end
  end
  
  def is_mobile_device?
    @mobile_device ||= request.env['X_MOBILE_DEVICE']
  end
end
