class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/:id
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/:id/edit
  def edit
  end

  # POST /posts/commit
  def create
    @post = Post.new(title: params[:post][:title], content: params[:post][:content])
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH /posts/:id
  def update
    if @post.update(title: params[:post][:title], content: params[:post][:content])
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /posts/:id
  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
