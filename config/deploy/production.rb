server '52.196.159.192', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/kohei/.ssh/id_rsa'
