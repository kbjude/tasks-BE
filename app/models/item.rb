class Item < ApplicationRecord
    # before_action :set_item, only: [:show, :update, :destroy]
    has_many :itemdetails, dependent: :destroy
    validates_presence_of :name
end
