class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews
    end 

    # Post route for comment
    def create
            # Add id to params , id getting from the POST fetch body.
              
            review = Review.create(content:params[:content], user_id:params[:userId], rating:params[:rating], username: params[:user_name])
            render json:review
            
        
    end
    
    private 

    # def reviewParams
    #     params.permit(:content, :rating, :user_id)
    # end

end
