class AgesController < ApplicationController

    def index
        @ages = Age.all
    end

end
