class LikesController < ApplicationController
    def create
        @book = Book.find(
        params[:book_id]
        )

        @like = @book.likes.create(like_params)
        redirect_to book_path(@book)
        
    end
    
    private
    def like_params
        
        params.require(:like).permit(:liker,:body)
        
    end
end
