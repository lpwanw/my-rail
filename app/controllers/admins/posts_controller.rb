# frozen_string_literal: true

class Admins::PostsController < AdminsController
  before_action :set_admins_post, only: %i[show edit update destroy]

  # GET /admins/posts or /admins/posts.json
  def index
    @posts = Post.newest
  end

  # GET /admins/posts/1 or /admins/posts/1.json
  def show; end

  # GET /admins/posts/new
  def new
    @post = Post.new
  end

  # GET /admins/posts/1/edit
  def edit; end

  # POST /admins/posts or /admins/posts.json
  def create
    @post = Post.new(admins_post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to admins_post_url(@post) }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/posts/1 or /admins/posts/1.json
  def update
    respond_to do |format|
      if @post.update(admins_post_params)
        format.html { redirect_to admins_post_url(@post) }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/posts/1 or /admins/posts/1.json
  def destroy
    @post.destroy!

    respond_to do |format|
      format.html { redirect_to admins_posts_url }
      format.json { head :no_content }
    end
  end

  private

  def set_admins_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def admins_post_params
    params.fetch(:post).permit(:title, :summary, :link, :body)
  end
end
