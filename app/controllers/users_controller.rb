class UsersController < ApplicationController

  def show
  user = User.find_by(id: session[:user_id])
  if user
    render json: user
  else
    render json: { errors:  'User not found' }, status: 401
  end
  # def create
  #   user = User.new(user_params)

  #   if user.save
  #     session[:user_id] = user.id
  #     render json: user, status: :created
  #   else
  #     render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  #   def show
  #       user = User.find_by(id: session[:user_id])

  #       if user
  #       render json: user
  #       else
  #       render json: { error: 'User not found' }, status: :not_found
  #       end
  #   end


  # private

  # def user_params
  #   params.permit(:username)
  # end
end

