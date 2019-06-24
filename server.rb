require "sinatra"
require "googlebooks"

# get "/" do
#   erb :home
# end
#
# get "/about" do
#   erb :about
# end

get "/" do
  @books = GoogleBooks.search("#{params[:query]}")
  @first = @books.first
  erb :home
end
