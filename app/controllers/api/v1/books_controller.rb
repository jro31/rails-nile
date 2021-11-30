module Api
  module V1
    class BooksController < ApplicationController
      def index
        books = Book.all

        render json: BooksRepresenter.new(books).as_json
      end

      def create
        book = Book.new(book_params)

        if book.save
          render json: book, status: :created # 'status: :created' returns a 201 status
        else
          render json: book.errors, status: :unprocessable_entity # 'status: :unprocessable_entity' returns a 422
        end
        # See http://www.railsstatuscodes.com/ for other Rails status code keys
      end

      def destroy
        Book.find(params[:id]).destroy!

        head :no_content # returns a 204 in the head of the return
      end

      private

      def book_params
        params.require(:book).permit(:title, :author)
      end
    end
  end
end
