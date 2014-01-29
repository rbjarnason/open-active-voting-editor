class ApplicationController < ActionController::Base
  protect_from_forgery

  # NEVER PUT THIS EDITOR ON THE PUBLIC INTERNET IF YOU ARE MANAGING AN ELECTION
  # THE USER / PASSWORD BELOW IS NOT SECURE AND IS IN CLEARTEXT HERE ON THE OPEN INTERNET AND ONLY PUT IN HERE PROTECTING OPEN TESTS
  http_basic_authenticate_with name: "editor", password: "ds8vCsk7"

  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    { :locale => I18n.locale }
  end
end
