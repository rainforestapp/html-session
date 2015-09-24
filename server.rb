require 'sinatra'

enable :sessions

get '/' do
  "<html><body><p><form method='post'><input name='body' value='#{session[:value].to_s}'><input type='submit'></form></p><p>#{session[:value].to_s}</p></body></html>"
end

post '/' do
  session[:value] = params[:body]
  redirect '/'
end
