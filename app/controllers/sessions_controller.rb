class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user_id
            render json: user include: ["reservations"] status: :created
        else
            render json: { error: "Invalid username or password"} status: :unathorized
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end
 
end