class TopsController < ApplicationController

    def index
        @answers = Answer.all
        @counts = Answer.count
    end

end
