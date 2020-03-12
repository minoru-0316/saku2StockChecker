class StockplainsController < ApplicationController

    def index
        @stockplains = Stockplain.all
    end

end
