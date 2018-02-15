require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('pry')

get('/') do
  @list = Contacts.all()
  erb(:input)
end

get('output/:id') do
  @contact = Contacts.find(params[:id])
  street = params["street"]
  city = params["city"]
  state = params["state"]
  zip_code = params["zip_code"]
  erb(:output)
end

post('/output') do
  first_name = params["first_name"]
  last_name = params["last_name"]
  phone_number = params["phone_number"]
  job_title = params["job_title"]
  company = params["company"]
  contact_type = params["contact_type"]

  contact = Contacts.new(params)
  contact.save()
  Contacts.sort()
  @list = Contacts.all
  erb(:output)
end
