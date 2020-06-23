class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        user = User.new(user_params) 
        if params[:user][:password] == params[:user][:password_confirmation] && user.save
            session[:user_id] = user.id
            render json: {
                status: 'created',
                user: user
            }
        else
            render json: {status: 505 }
        end  
    end

private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
    
end
