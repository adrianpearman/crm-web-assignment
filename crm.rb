# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work at all for the web-based version!
# You'll have to implement it from scratch.

require_relative 'contact'
require 'sinatra'
require 'pry'


get '/' do
  @crm_app_name = "Adrian's CRM"
  erb :index
end

get '/contacts' do
  @crm_app_name = "Adrian's CRM"
  erb :contacts
end

get '/new_contact' do
  @crm_app_name = "Adrian's CRM"
  erb :new_contact
end

get '/contacts/new' do
  erb :new_contact
end

get '/contacts/edit' do
  erb :edit_contact
end

put '/contacts' do
  "PUT request: #{params}"
end

delete '/contacts' do
  "DELETE request: #{params}"
end


post '/contacts' do
# [:first_name], params[:last_name], params[:email], params[:note]
  Contact.create(params)
  redirect to ('/contacts')
end


#search for a contact by id
get '/contacts/:id' do
  @contact = Contact.find(params[:id].to_i)
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

#delete a contact
get do

end
