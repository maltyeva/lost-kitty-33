class PetsController < ApplicationController
  def new
    # create a new instance
    @pet = Pet.new

  end

  def create
    # new instance, filled with the params from the form
    @pet = Pet.new(pet_params)
    # save the instance
    @pet.save
    #redirect to show page because there is no view
    redirect_to pet_path(@pet)
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    # find the pet we are updating in the params
    #pets/6
    @pet = Pet.find(params[:id])
    #update the pet
    @pet.update(pet_edit_params)
    # redirect to show because there is no view
    redirect_to @pet
  end

  def index
    @pets = Pet.all.where(returned: false)
  end

  def show
    # @pet = Pet.find(5)
    @pet = Pet.find(params[:id])
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    # redirect to index because @pet doesn't exist
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:location, :species, :color, :date_found, :size)
  end
  def pet_edit_params
    params.require(:pet).permit(:location, :species, :color, :date_found, :size, :returned)
  end
end
