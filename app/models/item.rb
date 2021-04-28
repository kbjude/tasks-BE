class Item < ApplicationRecord
    before_action :set_todo, only: [:show, :update, :destroy]
    has_many :itemdetails, dependent: :destroy
    validates_presence_of :name

    def index
        @items = Items.all
        json_response(@items)
    end

    def create
        @item = Item.create!(item_params)
        json_response(@items, :created)
    end

    def show
        json_response(@item)
    end

    def update
        @item.update(item_params)
        head :no_content
    end

    def destroy
        @item.destroy
        head :no_content
    end

    private

    def item_params
      # whitelist params
      params.permit(:name, :created_by)
    end
  
    def set_item
      @item = Item.find(params[:id])
    end
    
end
