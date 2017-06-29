server '52.196.159.192bundle exec rake secret', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/kohei/.ssh/id_rsa'
