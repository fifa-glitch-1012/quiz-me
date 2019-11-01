class StaticPagesController < ApplicationController

  def leave_feedback   #contact feedback
    required = [:name, :email, :reply, :feedback_type, :message]
    form_complete = true
    required.each do |f|
      if params.has_key? f and not params[f].blank?
        # that's good news. do nothing
      else
        form_complete = false
      end
    end

    if form_complete
      form_status_msg = 'Thank you for your feedback!'
    else
      form_status_msg = 'Please fill in all the remaining form fields and resubmit.'
    end

    respond_to do |format|
      format.html {
        flash.now[:status_msg] = form_status_msg
        render :contact, locals: { feedback: params }
      }
    end
  end

  def contact
    respond_to do |format|
      format.html { render :contact, locals: { feedback: {} } }
    end
  end




  def student_feedback   #student_info feedback
    required = [:first_name, :last_name, :reply, :student_classification, :mailing_address]
    form_complete = true
    required.each do |f|
      if params.has_key? f and not params[f].blank?
        # that's good news. do nothing
      else
        form_complete = false
      end
    end

    if form_complete
      form_status_msg = 'Thank you for your feedback!'
    else
      form_status_msg = 'Please fill in all the remaining form fields and resubmit.'
    end

    respond_to do |format|
      format.html { render :student_info, locals: { status_msg: form_status_msg, feedback: params } }
    end
  end

  def student_info 
    respond_to do |format|
      format.html { render :student_info, locals: { feedback: {} } }
    end
  end


























  def welcome  #in order to have this method called you need to have a route.

    features = [
      "Choose from premade quizzes on a variety of topics",
      "Make your own quizzes to customize your learning",
      "Compare your scores with other users"
    ]
    respond_to do |format|  #respond to http request
      format.html { render :welcome, locals: { features: features } } #particular format is html. render welcome view and returns 
      
    end
  end

  def about
    respond_to do |format|
      format.html { render :about }
    end
  end

end 