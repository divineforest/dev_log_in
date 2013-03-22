Rails.application.routes.draw do

  get 'dev/log_in/:login(/:model)' => "dev_log_in#log_in"

end
