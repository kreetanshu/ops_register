class CooksController < ApplicationController
  def index
  	@dataviews = Dataview.select("cook as cooklist, doj, count(created_at) as no_of_requests ,sum(money) as total_price").group("cook","doj")
    @dataviewsmonth = Dataview.select("cook as cooklist, count(created_at) as no_of_requests ,sum(money) as total_price").group("cook").having("created_at.month = ?", Date.today.month)
  end

  def show
  	@dataview = Dataview.find(params[:id])
  end
end
