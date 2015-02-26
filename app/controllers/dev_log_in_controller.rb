class DevLogInController < ActionController::Base

  def log_in
    if Rails.env.development? || Rails.env.test?
      model_class = params[:model].present? ? params[:model].classify.constantize : User

      user = if is_numeric?(params[:login])
        model_class.find(params[:login])
      else
        model_class.where(model_class.arel_table[:email].matches("#{params[:login]}@%")).first!
      end

      sign_in(user)
      redirect_to "/"
    else
      raise "Works only in development or test env"
    end
  end

  private

  def is_numeric?(id)
    id =~ /\A\d+\z/ ? true : false
  end

end
