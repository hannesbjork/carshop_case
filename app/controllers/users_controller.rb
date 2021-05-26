class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
  	@sold_for_total = 0
    @users = User.all
    @users.each do |user|
    	@sold_for = 0
    	@sales = user.sales.all
    	@sales.each do |sale|
    		@carmodel = sale.carmodel
    		@sold_for_total = @sold_for_total + @carmodel.price.to_i
    		@sold_for = @sold_for + @carmodel.price.to_i
    	end
    	user.sold_for = @sold_for
    end
    
    
  end

  # GET /posts/1 or /posts/1.json
  def show
  	@user = User.find(params[:id])
  	@employee = @user.employee
  	@sales = Sale.where(employee_id: @employee)
  	#@sales = Sale.where(employee_id: @employee)
  	
  end

  # GET /posts/new
  def new
    @user = User.new
  end

  # GET /posts/1/edit
  def edit
  end
  
  # POST /posts/1 or /posts/1.json
  def add_as_employee
  	puts "Called for new employee"
  end

  # POST /posts or /posts.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :employee_number, :password, :password_confirmation)
    end
end
