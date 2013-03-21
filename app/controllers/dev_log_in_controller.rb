class DevLogInController < ActionController::Base

  def log_in
    if Rails.env.development? || Rails.env.test?
      model_class = params[:model].present? ? params[:model].classify.constantize : User
      user = model_class.where(model_class.arel_table[:email].matches("#{params[:login]}@%")).first!
      sign_in_and_redirect(user)
    else
      raise "Works only in development or test env"
    end
  end

end
