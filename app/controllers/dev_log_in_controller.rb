class DevLogInController < ApplicationController

  def log_in
    if Rails.env.development? || Rails.env.test?
      user = User.where(User.arel_table[:email].matches("#{params[:login]}@%")).first!
      sign_in_and_redirect(user)
    else
      raise "Works only in development or test env"
    end
  end

end
