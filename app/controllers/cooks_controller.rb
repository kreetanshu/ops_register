class CooksController < ApplicationController
  def index
  	@dataviews12 = Dataview.select("cook as cooklist,spid,created_at, count(created_at) as no_of_requests ,sum(money) as total_price").group("cook","spid","created_at")
    #@dataviewsmonth = Dataview.select("cook as cooklist,spid, count(created_at) as no_of_requests ,sum(money) as total_price").where("MONTH[created_at] = ?", Date.today.month).group("cook","spid")
  end

  def show
  	
  end

  def cookrequest
  	@dataviewc = Dataview.where("spid = ?" , params[:spid])
  	#where(user_id: params[:user_id])
  end

   private
   def dataview_params
      params.require(:dataview).permit(:id,:cook, :customer_id, :customer_name, :address, :starttime ,:endtime,:totaltime,:money,:paidbycustomer,:paidbycook,:spid)
    end
end
