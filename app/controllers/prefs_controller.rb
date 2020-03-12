class PrefsController < ApplicationController

    def index
        @prefs = Pref.all
    end

end
