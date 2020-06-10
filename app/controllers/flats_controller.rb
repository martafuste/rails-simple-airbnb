class FlatsController < ApplicationController
before_action :set_flat, only: [:show, :edit]

def index
  @flats = Flat.all
end

def show
  @flat = Flat.new
end

def new
@flat= Flat.new
end

def edit

end
def create



def set_flat
  @flat = Flat.find(params[:id])
end

def flat_params
  params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
end

end
