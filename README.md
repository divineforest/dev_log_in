# Dev Log in

Rails gem that helps you to log in and easily switch between multiple users in development env.

# Usage
Go to http://myproject.local/dev/log_in/john to log in as john (if a user with email "john@*.*" exists in DB)

or

```
/dev/log_in/ivan for "ivan@*.*"
/dev/log_in/admin for "admin@*.*"
```

# Installation

Just add to your Gemfile:

```
gem 'dev_log_in'
```

Copyright © 2011 divineforest, evrone.com
This project rocks and uses MIT-LICENSE.
