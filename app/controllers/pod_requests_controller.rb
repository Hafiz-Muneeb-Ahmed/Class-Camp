class PodRequestsController < ApplicationController
  def new
    @pod = Pod.find(params[:id])
    @pod_request = PodRequest.new
  end

  def create
    params[:children_ids]&.each do |child_id|
      PodRequest.create(child_id: child_id, pod_id: params[:pod_request][:pod_id])
    end
    redirect_to root_path
  end
end
