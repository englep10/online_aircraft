ActiveAdmin.register Aircraft do

  permit_params :manufactuer_id, :serial_number, :ask_price, :contact_company, :contact_name, :contact_phone, :contact_cell_phone, :contact_fax, :contact_email, :contact_website, :unique_selling_point, :airframe_hour, :total_landing, :engine_type, :engine_serial_number, :msp, :left_engine_hour, :left_engine_cylce, :right_engine_hour, :right_engine_cycle, :avionic, :year_painted, :exterior, :interior, :inspection, :condition, :registration
  
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
