ActiveAdmin.register Order do
  permit_params :state
  form do |f|
    f.inputs "Detalhes" do
      f.input :state, :as => :select, collection: [["Criado", "created"], ["Fazendo", "doing"], ["Pronto", "ready"], ["entregue", "delivered"]]
    end
    f.actions
  end

  show do |order|
    panel "Pedido" do
      h3 order.number
      table_for order.line_items do
        column :name
      end
    end
  end
end

