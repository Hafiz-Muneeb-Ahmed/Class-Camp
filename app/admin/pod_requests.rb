ActiveAdmin.register PodRequest do

  actions :all, except: [:destroy]
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :status, :child_id, :pod_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:status, :child_id, :pod_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :status, as: :select, collection: PodRequest.statuses.select { |k,v| ['approved', 'rejected'].include?(k) },include_blank: false
    end
    f.actions
  end
end
