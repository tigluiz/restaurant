ActiveAdmin.register Item do
  permit_params :name, :price, :item_type

  index do
    column :name
    column :price
    column :item_type
  end

  form do |f|
    f.inputs "Detalhes" do
      f.input :name
      f.input :price
      f.input :item_type, :as => :select, collection: [["Comida", "food"], ["bebida", "drink"]]
    end
    f.actions
  end
end
