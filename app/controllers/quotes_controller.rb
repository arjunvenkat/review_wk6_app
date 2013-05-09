class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find_by_id(params[:id])
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new
    @quote.job_id = params[:job_id]
    @quote.contractor_id = params[:contractor_id]
    @quote.price = params[:price]
    
    if @quote.save
            redirect_to quotes_url
          else
      render 'new'
    end
  end

  def edit
    @quote = Quote.find_by_id(params[:id])
  end

  def update
    @quote = Quote.find_by_id(params[:id])
    @quote.job_id = params[:job_id]
    @quote.contractor_id = params[:contractor_id]
    @quote.price = params[:price]
    
    if @quote.save
            redirect_to quotes_url
          else
      render 'edit'
    end
  end

  def destroy
    @quote = Quote.find_by_id(params[:id])
    @quote.destroy
        redirect_to quotes_url
      end
end
