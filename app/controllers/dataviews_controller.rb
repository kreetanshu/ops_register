class DataviewsController < ApplicationController
  def index
    @dataviews = Dataview.all.order(created_at: :desc)
  end

  def show
    @dataview = Dataview.find(params[:id])
          # @linkreq= @service_providers.service_requests
  end

  def new
    @dataviews = Dataview.new
  end

  def create
    @dataviews = Dataview.new(dataview_params)
   # @service = Service.new(service_params)
    if @dataviews.save
      redirect_to dataviews_path
      flash[:info] = "Record is added."
    else
      render 'new'
    end
  end

  def edit
    @dataviews = Dataview.find(params[:id])
  end

  def update
    @dataviews = Dataview.find(params[:id])
   # @service = Service.new(service_params)
    if @dataviews.update_attributes(dataview_params)
      redirect_to dataviews_path
      flash[:info] = "Record is added."
    else
      render 'edit'
    end
  end

  def destroy
  end
  private
   def dataview_params
      params.require(:dataview).permit(:cook, :customer_id, :customer_name, :address, :starttime ,:endtime,:totaltime,:money,:paidbycustomer,:paidbycook,:spid,:typere)
    end
end
