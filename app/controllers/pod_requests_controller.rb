class PodRequestsController < ApplicationController
  after_action :send_email_to_parents, only: [:create]
  def new
    @pod = Pod.find(params[:id])
    @pod_request = PodRequest.new
  end

  def create
    params[:children_ids]&.each do |child_id|
      PodRequest.create(child_id: child_id, pod_id: params[:pod_request][:pod_id])
    end

    flash[:notice] = 'Your Request has been sent Successfully'
    redirect_to root_path
  end

  def send_email_to_parents
    PodRequestsMailer.with(
      parent: current_parent.email,
       child: params[:children_ids],
        pod: params[:pod_request][:pod_id]
      ).pod_request_created.deliver_later
  end

end
