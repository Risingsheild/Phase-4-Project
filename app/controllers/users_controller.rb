class UsersController < ApplicationController
    def show 
        user = User.find_by(id: session[user_id])
        if user 
            render json: user, include: ['reservations', 'campsites']
        else 
            render json: { error: "Not Authorized"}, status: :unathorized
        end
    end

    def create 
        user = User.create(user_params)
        if user.valid? 
            session[:user_id] = user_id
            render json: user, status: :created
        else
            render json: {user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private 

    def user_params
        params.permit(:username, :password, :password_confirmation, :first_name, :last_name)
    end
    
end
