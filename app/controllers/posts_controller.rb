class PostsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def new
    @party = Party.find(params[:party_id])
    @post = Post.new
  end

  def create
    @party = Party.find(params[:party_id])
    @post = Post.new(post_params)
    @post.party = @party
    @post.user = current_user

    if @post.save
      redirect_to party_path(@party)
    else
      render :new
    end
  end


  private

  def post_params
    params.require(:post).permit(:content)
  end

end
