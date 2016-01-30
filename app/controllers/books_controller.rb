class BooksController < ApplicationController
    def new
        @book= Book.new
    end

    def create
        @book = Book.new(params)
    end

    def index

    end

    private

        def book_params
            params.require(:book).permit(:title, :description, :author)
        end
end
