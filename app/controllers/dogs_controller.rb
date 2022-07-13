class DogsController < ApplicationController

  def index
    pp current_user
    @dogs = Dog.all 
    render json: dog.as_json 


    def show
      dog_id = params["id"]
      @dog = Dog.find_by(id: params[:id])
      render template: "dogs/show"
    end

    def create
      dog = Dog.new(
      name: params[:name],
      age: [:age]
      breed: [:breed]
      
    )

    if dog.save
     @dog = dog
     render template: "dogs/show" 
    else
     render json: {errors: dog.errors.full_messages}, status: 422
    end 
   end




end
