class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
      if params[:save]=="SAVE"
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save

        redirect_to '/'
      end

      if params[:cancel]=="CANCEL"
        redirect_to '/'
      end
  end

  def edit
      @post = Post.find(params[:post_id])
  end

  def update
    if params[:save]=="SAVE"
      @post = Post.find(params[:post_id])
      @post.title = params[:title]
      @post.content = params[:content]
      @post.save

      redirect_to '/'
    end

    if params[:cancel]=="CANCEL"
      redirect_to '/'
    end

  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.destroy
    
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:post_id])
  end

  def back
    redirect_to '/'
  end

end
