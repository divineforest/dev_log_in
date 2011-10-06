class DevLogInController < ApplicationController

  def log_in
    if Rails.env.development? || Rails.env.test?
      user = User.where(["email LIKE ?", params[:login]+'%']).first || (raise "Can't find user '#{params[:login]}'")
      sign_in_and_redirect(user)
    else
      raise "Works only in development or test env"
    end
  end

end
