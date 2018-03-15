ActiveAdmin.register Service do
  permit_params do
    permitted = [:heading, :description, :sort_order, :icon]
  end

end
