class McQuestionsController < ApplicationController


  def show
    question = McQuestion.find(params[:id])
    respond_to do |format|
      format.html { render :show, locals: { question: question } }
    end
  end


  def edit
    # object to use in form
    question = McQuestion.find(params[:id])
    respond_to do |format|
      format.html { render :edit, locals: { question: question } }
    end
  end

  def update
    # load existing object again from URL param
    question = McQuestion.find(params[:id])
    # respond_to block
    respond_to do |format|
      # html format block
      format.html {
        # if question updates with permitted params
        if question.update(params.require(:mc_question).permit(:question, :answer, :distractor_1, :distractor_2))
          # success message
          flash[:success] = 'Question updated successfully'
          # redirect to index
          redirect_to quiz_url(question.quiz_id)
        else
          # error message
          flash.now[:error] = 'Error: Question could not be updated'
          # render edit
          render :edit, locals: { question: question }
        end
      }
    end
  end


  def destroy
    # load existing object again from URL param
    question = McQuestion.find(params[:id])
    # destroy object
    question.destroy
    # respond_to block
    respond_to do |format|
      # html format block
      format.html {
        # success message
        flash[:success] = 'Question removed successfully'
        # redirect to index
        redirect_to quiz_url(question.quiz_id)
      }
    end
  end

  
end

