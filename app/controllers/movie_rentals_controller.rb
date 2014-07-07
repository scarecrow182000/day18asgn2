class MovieRentalsController < ApplicationController
  before_action :set_movie_rental, only: [:show, :edit, :update, :destroy]

  # GET /movie_rentals
  # GET /movie_rentals.json
  def index
    @movie_rentals = MovieRental.all
  end

  # GET /movie_rentals/1
  # GET /movie_rentals/1.json
  def show
  end

  # GET /movie_rentals/new
  def new
    @movie_rental = MovieRental.new
  end

  # GET /movie_rentals/1/edit
  def edit
  end

  # POST /movie_rentals
  # POST /movie_rentals.json
  def create
    @movie_rental = MovieRental.new(movie_rental_params)

    respond_to do |format|
      if @movie_rental.save
        format.html { redirect_to @movie_rental, notice: 'Movie rental was successfully created.' }
        format.json { render :show, status: :created, location: @movie_rental }
      else
        format.html { render :new }
        format.json { render json: @movie_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_rentals/1
  # PATCH/PUT /movie_rentals/1.json
  def update
    respond_to do |format|
      if @movie_rental.update(movie_rental_params)
        format.html { redirect_to @movie_rental, notice: 'Movie rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_rental }
      else
        format.html { render :edit }
        format.json { render json: @movie_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_rentals/1
  # DELETE /movie_rentals/1.json
  def destroy
    @movie_rental.destroy
    respond_to do |format|
      format.html { redirect_to movie_rentals_url, notice: 'Movie rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_rental
      @movie_rental = MovieRental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_rental_params
      params.require(:movie_rental).permit(:user_id, :movie_id)
    end
end
