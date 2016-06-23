require 'yelp'

class SearchController < ApplicationController

def new
 
end

def create
  @results = Yelp.client.search(params[:search][:postal_code], search_params)

  render :show
  
end

def show

end

private

def search_params
  params.require(:search).permit(:term, :limit)
end

end