ActiveAdmin.register AdminUser do

  form do |f|
    f.inputs "AdminUser" do
      f.input :email, :required => true
      f.input :password , :required => true
      f.input :password_confirmation , :required => true
      f.input :Admins , :required => true
      #
      # ... other inputs ...
      #
    end
    f.button "save"
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password ,:password_confirmation ,:Admins
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :Admins]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
