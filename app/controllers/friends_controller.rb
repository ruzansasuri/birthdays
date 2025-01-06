class FriendsController < ApplicationController
  before_action :set_friend, only: %i[ show edit update ]

  def index
    @friends=Friend.all
  end

  def show
  end

  def new
    @friends = Friend.new
  end

  def create
    @friends = Friend.new(friend_params)
    if @friends.save
      redirect_to @friends
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @friends.update(friend_params)
      redirect_to @friends
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def set_friend
    @friends = Friend.find(params[:id])
  end

    def friend_params
      params.expect(friend: [ :name, :birthday ])
    end

end
