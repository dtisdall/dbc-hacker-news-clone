before do
  check_authenticated
end

get '/' do
  @posts = Post.all
  erb :'partials/_feed'
end

get '/login' do
  erb :'partials/_loginform'
end

get '/comments' do
  @comments = Comment.all
  erb :'partials/_comments'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'partials/_post'
end

get '/logout' do
  remove_cookie
  redirect '/'
end

post '/login' do
  @user = User.authenticate(params)
  if @user
    set_cookie
    redirect '/'
  else
    redirect '/login'
  end
end

post '/comments' do
  if @user
    @comment = Comment.new(params)
    @comment.user = @user
    @comment.save
  end
  redirect '/'
end

post '/posts' do
  if @user
    @post = Post.new(params)
    @post.user = @user
    @post.save
  end
  redirect '/'
end