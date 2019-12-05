server '54.250.33.52', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/syun/.ssh/id_rsa'