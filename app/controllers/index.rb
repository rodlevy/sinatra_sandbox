get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @coolness = params[:get_input]
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @post = params[:post_input]
  @text_area = params[:text_area_input]
  @radio_button = params[:group1]
  @check_box = params[:box]
  @check_box.each {|item, value| p value}
  @check_box_1=params[:box1]
  @check_box_2=params[:box2]
  @check_box_3=params[:box3]
  @mydrop_down=params[:mydropdown]
  erb :post_cool_url
end
