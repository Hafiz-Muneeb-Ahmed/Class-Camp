class PodRequestsMailer < ApplicationMailer
  def pod_request_created
    @parent = params[:parent]
    @children = Child.find(params[:child])
    @pod = Pod.find(params[:pod])

    mail to: "muneeb@example.com", subject: "Request recieved to join pod"
  end
end
