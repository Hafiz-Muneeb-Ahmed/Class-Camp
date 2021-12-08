class TeachersController < ApplicationController
  def index
    @q = Teacher.ransack(params[:q])
    @pods = @q.result
  end
end
