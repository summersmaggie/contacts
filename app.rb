require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('pry')

get('/') do
  @list = Contacts.all()
  erb(:input)
end

post('/') do
  first_name = params["first_name"]
  last_name = params["last_name"]
  phone_number = params["phone_number"]
  job_title = params["job_title"]
  company = params["company"]
  contact_type = params["contact_type"]

  contact = Contacts.new(params)

  contact.save()
  @list = Contacts.all
  erb(:input)
end
