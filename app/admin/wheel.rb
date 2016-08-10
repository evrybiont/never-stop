ActiveAdmin.register Wheel do
  active_admin_importable

  permit_params :brand_id, :side_id, :name, :title, :price, :radius, :width, :height, images_attributes: [:id, :data]

  index do
    selectable_column
    column :id
    column :brand
    column :side
    column :name
    column :title
    column :price
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :brand
      f.input :side
      f.input :name
      f.input :title
      f.input :radius
      f.input :width
      f.input :height
      f.input :price
      f.has_many :images, heading: false, allow_destroy: true do |cd|
        cd.input :data, :required => true, :as => :file
      end
    end
    f.actions
  end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
end
