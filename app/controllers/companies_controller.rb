class CompaniesController < ApplicationController

def new
  @user = current_user
  @company = Company.new
end

def create
  @user = current_user
  @company = @user.build_company(company_params)
  if @company.save
    @company.users << current_user
    redirect_to current_user
  else
    render :new
  end
end

def show
  @company = Company.find(params[:id])
end

def edit
  @user = current_user
  @company = Company.find(params[:id])
end

def update
  @user = current_user
  @company = Company.find(params[:id])
  if @company.update_attributes(company_params)
    flash[:success] = "Company profile updated"
    redirect_to user_company_path
  else
    render :edit
  end
end

private

  def company_params
    params.require(:company).permit(:name, :about, :profile, :customers_profile)
  end

end
