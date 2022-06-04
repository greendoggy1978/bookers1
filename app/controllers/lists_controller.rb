class ListsController < ApplicationController

  def new
   @book=Book.new

  def create
    @book=Book.new(list_params)
    if @book.save
      redirect_to list_path(@book.id)
    else
      render :new
    end
  end

  book=Book.new(list_params)

  book.save

  redirect_to'/top'

  private

  def book_params
    params.require(:list).permit(:tilte,body)
  end
end

  def index
    @book=Book.all
  end

  private

  def show
  end

  def edit
  end
