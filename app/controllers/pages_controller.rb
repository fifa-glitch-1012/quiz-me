class PagesController < ApplicationController
    def profile
        respond_to do |format|
            format.html { render :profile }
        end
    end
end
