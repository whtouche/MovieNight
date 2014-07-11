class QueriesController < ApplicationController
  def new
    @query = Query.new

  end

  def create
    @query = Query.new
    @query.zip = query_params['zip']
    @query.date = query_params['date']
    @results = Showtimer.data(@query.zip, @query.date)

    #redirect_to queries_path
    binding.pry
  end

  private

  def query_params
    params.require(:query).permit(:zip, :date)
  end

end
