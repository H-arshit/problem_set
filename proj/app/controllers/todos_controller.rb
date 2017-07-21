class TodosController < ApplicationController
  def index
  	@data = Todo.first
  end

  def create 

  	data = params["todo"]

  	data = data.permit(:name)


  	@newdata  = Todo.new(data)
  	

	  @newdata.save!


	return redirect_to '/todos/index'
  end


  def update

  	@data = Todo.find(params["id"])

  	newdata = params["todo"]
    newdata = newdata.permit(:name)

    @data.update(newdata)



	return redirect_to '/todos/index'
  	
  end



end
