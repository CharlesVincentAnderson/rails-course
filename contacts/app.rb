require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'contacts.db'}

class Contact < ActiveRecord::Base
end

get '/contacts' do
    @contacts = Contact.all
    erb :contacts
end

get '/contact/new' do
  erb :new
end

post '/contact/new' do
   contact = Contact.new
   contact.first_name = params[:first_name]
   contact.last_name = params[:last_name]
   contact.phone = params[:phone]
   contact.email = params[:email]
   contact.address = params[:address]
   contact.city = params[:city]
   contact.state = params[:state]
   contact.zip = params[:zip]
   contact.save
   redirect '/contacts'
end

get '/contact/edit' do
    @contact = Contact.find(params[:id])
    erb :edit
end

post '/contact/edit' do
   contact = Contact.find(params[:id])
   contact.first_name = params[:first_name]
   contact.last_name = params[:last_name]
   contact.phone = params[:phone]
   contact.email = params[:email]
   contact.address = params[:address]
   contact.city = params[:city]
   contact.state = params[:state]
   contact.zip = params[:zip]
   contact.save
   redirect '/contacts'
end

get '/contact/find' do 
    erb :find
end

post '/contact/find' do
  query = "%#{params[:search]}%"
  @contacts = Contact.where("first_name LIKE ? OR last_name LIKE ?", query, query)
  erb :found
end