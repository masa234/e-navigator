class InterviewsController < ApplicationController
  def new
    @interview = Interview.new
  end
  
  def create
    @interview = current_user.interviews.build(interview_params)
    if @interview.save
      swal{ success '新規面接の作成に成功しました' }
      redirect_to user_interviews_path(current_user)
    else 
      swal{ success '申し訳ございません 作成できませんでした' }
      render :new
    end
  end

  def index
  end
  
  private
  
  def interview_params
    params.require(:interview).permit(:interview_schedule)
  end
  
end
