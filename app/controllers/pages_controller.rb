class PagesController < ApplicationController
    def profile
        respond_to do |format|
            format.html { render :profile }
        end
    end


    def review
        respond_to do |format|
            format.html { render :review }
        end
    end

    def question
        respond_to do |format|
          format.html { render :question }
        end
    end
end
