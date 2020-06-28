ActiveAdmin.register TravelGenre do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :genre, :is_valid
  #
  # or
  #
  # permit_params do
  #   permitted = [:genre, :is_valid]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :genre

  index do
    selectable_column
    id_column
    column :genre
    column :is_valid
    column '旅行数' do |genre|
      genre.travels.count
    end
    actions
  end


end
