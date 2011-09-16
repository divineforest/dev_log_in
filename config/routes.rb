Rails.application.routes.draw do

  get 'dev/log_in/:login' => "dev_log_in#log_in"

end
