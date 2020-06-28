ActiveAdmin.register Travel do

  permit_params :travel_genre_id, :name, :sales_status, :price, :description

  form do |f|
    f.semantic_errors # エラーメッセージ表示
    f.inputs do
      f.input :travel_genre
      f.input :name
      f.input :picture_id
      f.input :description
      f.input :price
      f.input :sales_status
    end          # 入力フィールドを表示
    f.actions         # submit/cancelボタンを表示
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :travel_genre_id, :name, :description, :price, :picture_id, :sales_status
  #
  # or
  #
  # permit_params do
  #   permitted = [:travel_genre_id, :name, :description, :price, :picture_id, :sales_status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
