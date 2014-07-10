class QueriesController < ApplicationController
  def new
    @query = Query.new
  end

  def create
    binding.pry
    @query = Query.new
    @query.zip = query_params['zip']
  end

  def show
    @results = Showtimer.data(@query.zip)
  end

  private

  def query_params
    params.require(:query).permit(:zip)
  end

end
