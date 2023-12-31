class ReviewsController < ApplicationController
  include Pagy::Backend
  def index
    @pagy, @reviews = pagy(Review.all, items: 10)
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to @review
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to @review
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to root_path, status: :see_other
  end


  private
    def review_params
      params.require(:review).permit(:report_title, :bio, :profile_image, :pinned_repositories, :student_name, :contributions, :repository_list )
    end
end
