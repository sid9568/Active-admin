ActiveAdmin.register Student do


  permit_params :fname, :lname, :email, :password, :contact

  # Rename the desired parameter in /admin/empregados

  index do
    column "Id", :id
    column "First Name", :fname
    column "Last Name", :lname
    column "Email", :email
    column "Contact", :contact
    column "Image", :image
    actions
  end
  

end

