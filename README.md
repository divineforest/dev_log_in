# Dev Log in

Rails gem that helps you to log in and easily switch between multiple users in development env (without configuration).

# Usage
Go to http://myproject.local/dev/log_in/john to log in as john (if a user with email "john@*.*" exists in DB)

or

```
/dev/log_in/ivan for "ivan@*.*"
/dev/log_in/admin for "admin@*.*"
```


Go to http://myproject.local/dev/log_in/john/admin to log in, if your
model has a different from User name

# Installation

Just add to your Gemfile:

```ruby
gem 'dev_log_in'
```

# Configuration

Not needed!

Copyright © 2012 divineforest, evrone.com
This project rocks and uses MIT-LICENSE.
