require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  erb :index
end

post '/create' do
  @occasion = params[:occasion]
  erb :create
end

# Helper method to get image URL based on occasion
def image_url_for_occasion(occasion)
  case occasion
  when 'birthday'
    'https://i.pinimg.com/736x/5c/5f/06/5c5f0698648211289e672534c2ad7e6f.jpg'  # Replace with actual birthday image URL
  when 'anniversary'
    'https://thumbs.dreamstime.com/b/happy-anniversary-card-white-text-red-rose-petal-backgrounds-60681467.jpg'  # Replace with actual anniversary image URL
  when 'thank_you'
    'https://st.depositphotos.com/1823785/2635/i/450/depositphotos_26357903-stock-photo-natural-looking-label-with-thank.jpg'  # Replace with actual thank you image URL
  else
    ''  # Handle other occasions or provide a default image URL
  end
end
