class CustomerrequestsController < ApplicationController
  def index
  	@dataviewscust = Dataview.select("customer_name as cooklist,customer_id,created_at,typere, count(created_at) as no_of_requests ,sum(money) as total_price").group("customer_name","customer_id","created_at","typere")
  end

  def show
  end

   def userrequest
  	@dataviewuser = Dataview.where("customer_id = ?" , params[:customer_id])
  	#where(user_id: params[:user_id])
   end
  private
   def dataview_params
      params.require(:dataview).permit(:cook, :customer_id, :customer_name, :address, :starttime ,:endtime,:totaltime,:money,:paidbycustomer,:paidbycook,:spid,:typere)
    end
end
