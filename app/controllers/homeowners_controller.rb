class HomeownersController < ApplicationController

  def index
    @homeowners = Homeowner.all
  end

  def show
    @homeowner = Homeowner.find_by_id(params[:id])
  end

  def new
    @homeowner = Homeowner.new
  end

  def create
    @homeowner = Homeowner.new
    @homeowner.name = params[:name]
    @homeowner.email = params[:email]
    @homeowner.phone = params[:phone]
    @homeowner.address = params[:address]
    
    if @homeowner.save
            redirect_to homeowners_url
          else
      render 'new'
    end
  end

  def edit
    @homeowner = Homeowner.find_by_id(params[:id])
  end

  def update
    @homeowner = Homeowner.find_by_id(params[:id])
    @homeowner.name = params[:name]
    @homeowner.email = params[:email]
    @homeowner.phone = params[:phone]
    @homeowner.address = params[:address]
    
    if @homeowner.save
            redirect_to homeowners_url
          else
      render 'edit'
    end
  end

  def destroy
    @homeowner = Homeowner.find_by_id(params[:id])
    @homeowner.destroy
        redirect_to homeowners_url
      end
end
