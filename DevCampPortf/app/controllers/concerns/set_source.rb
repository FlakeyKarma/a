module SetSource
  extend ActiveSupport::Concern
  
  included do
    before_filter :set_source
  end
  
  def set_source
    session[:source] = params[:heck] if params[:heck]
  end
end