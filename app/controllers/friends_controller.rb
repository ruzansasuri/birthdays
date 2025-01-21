# Author: Ruzan Sasuri 
# Description: Controller for Friend Application
class FriendsController < ApplicationController
  # Redirects listed functions to set_friend before executing the functions own code.
  before_action :set_friend, only: %i[ show edit update destroy ]

  # Query the model to show all friends.
  def index
    @friends=Friend.all
  end

  # Blank since set_action contains necessary code.
  def show
  end

  # Query model to create a new row.
  def new
    @friends = Friend.new
  end

  # Query model with required params present to create a new row. If it cannot be saved it will render an unprocessable 
  # entity status code, otherwise will redirect to the new value.
  def create
    @friends = Friend.new(friend_params)
    if @friends.save
      redirect_to @friends
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Blank since set_action contains necessary code.
  def edit
  end

  # Query model with required params present to update a row. If it cannot be updated it will render an unprocessable 
  # entity status code, otherwise will redirect to the updated value.
  def update
    if @friends.update(friend_params)
      redirect_to @friends
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Query model to delete a row. Redirects to index page.
  def destroy
    @friends.destroy
    redirect_to friends_path
  end

  # Defines function to find a particular row based on id param.
  private
  def set_friend
    @friends = Friend.find(params[:id])
  end

    # Ensures that name, birthday and description are part of the friend_params.
    def friend_params
      params.expect(friend: [ :name, :birthday, :description ])
    end

end
