ActiveAdmin.register Teacher do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :address, :qualification, :grade, :age, :gender, :bio
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :qualification, :grade, :age, :gender]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :name
      f.input :age
      f.input :grade
      f.input :qualification
      f.input :bio
      f.input :address
      br
      f.input :gender, as: :select, collection: Teacher.genders.collect { |status,id| [status.humanize,id] }
      end
    f.actions
  end

end
