class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, :except => [:created_at, :updated_at] 
    end
     
    def update 

        user = User.find_by(id:[params[:user_id]])
        user.update(username: params[:username])
        
        render json:user, :except => [:created_at, :updated_at] 
    end

    def showOneUser
        user = User.find_by(id:params[:id])
        render json:user 

    end


    def create
        
        @user = User.find_or_create_by(userParams)
        session[:user_id] = @user.id
        render json: @user, :except => [:created_at, :updated_at]

    end


    private
    def userParams
        # Only find by username 
        # Password is going to be null, not doing authentation for this project. 
        params.permit(:username)
    end
end
