module Api
  module V1
    class BooksController < ApplicationController
      def index
        books = Book.all

        render json: BooksRepresenter.new(books).as_json
      end

      def create
        # binding.irb
        author = Author.create!(author_params)
        book = Book.new(book_params.merge(author_id: author.id))

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

      def author_params
        params.require(:author).permit(:first_name, :last_name, :age)
      end

      def book_params
        params.require(:book).permit(:title)
      end
    end
  end
end
