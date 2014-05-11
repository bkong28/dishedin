class ChefsController < ApplicationController
	
  def index
		@chefs = Chef.all
	end

  def new
    @chef = Chef.new
  end

  def create
    chef = Chef.create! chef_params
    flash[:success] = "You have signed up"
    redirect_to chefs_path
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def edit
    @chef = Chef.find(params[:id])
  end  

  def update
    @chef = Chef.find(params[:id])

    if @chef.update(chef_params)
      redirect_to @chef
    else
      render 'edit'
    end
  end

  def destroy
    @chef = Chef.find(params[:id])
    @chef.destroy
 
    redirect_to chefs_path
  end

  private
    def chef_params
      params.require(:chef).permit(:first_name, :last_name, :email_address, :password, :password_confirmation)
    end

end
