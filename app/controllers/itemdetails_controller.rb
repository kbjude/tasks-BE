class ItemdetailsController < ApplicationController
    def index
        @itemdetails = Itemdetail.all
        json_response(@itemdetails)
    end

    def create
        @itemdetails = Itemdetails.create!(item_params)
        json_response(@itemdetails, :created)
    end

    def show
        json_response(@itemdetail)
    end

    def update
        @itemdetail.update(item_params)
        head :no_content
    end

    def destroy
        @itemdetail.destroy
        head :no_content
    end

    private

    def itemdetail_params
      # whitelist params
      params.permit(:name, :created_by)
    end
  
    def set_itemdetail
      @itemdetail = Iitemdetail.find(params[:id])
    end
end
