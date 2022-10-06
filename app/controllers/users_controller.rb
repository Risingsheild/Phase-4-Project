class UsersController < ApplicationController
    def show
        if current_user

          render json: current_user, status: :ok
        else 
          render json: {"No one is logged in"}, status: :unauthorized
        end
      end
        
      def create
        user = User.create!(user_params)
        session[:user_id] = user.id

        render json: user, status: :created
      end


    private 

    def user_params
        params.permit(:username, :password, :email)
    
end
