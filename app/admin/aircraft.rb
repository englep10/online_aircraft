ActiveAdmin.register Aircraft do

  permit_params :manufactuer_id, :serial_number, :ask_price, :contact_company, :contact_name, :contact_phone, :contact_cell_phone, :contact_fax, :contact_email, :contact_website, :unique_selling_point, :airframe_hour, :total_landing, :engine_type, :engine_serial_number, :msp, :left_engine_hour, :left_engine_cylce, :right_engine_hour, :right_engine_cycle, :avionic, :year_painted, :exterior, :interior, :inspection, :condition, :registration, :image

  show do |t|
    attributes_table do
      row :manufactuer_id
      row :serial_number
      row :ask_price
      row :contact_company
      row :contact_name
      row :contact_phone
      row :contact_cell_phone
      row :contact_fax
      row :contact_email
      row :contact_website
      row :unique_selling_point
      row :airframe_hour
      row :total_landing
      row :engine_type
      row :engine_serial_number
      row :msp
      row :left_engine_hour
      row :left_engine_cylce
      row :right_engine_hour
      row :right_engine_cycle
      row :avionic
      row :year_painted
      row :exterior
      row :interior
      row :inspection
      row :condition
      row :registration
      row :image do
				aircraft.image? ? image_tag(aircraft.image.url, height: '100') : content_tag(:span, "No Photo Yet")
			end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :manufactuer_id
      f.input :serial_number
      f.input :ask_price
      f.input :contact_company
      f.input :contact_name
      f.input :contact_phone
      f.input :contact_cell_phone
      f.input :contact_fax
      f.input :contact_email
      f.input :contact_website
      f.input :unique_selling_point
      f.input :airframe_hour
      f.input :total_landing
      f.input :engine_type
      f.input :engine_serial_number
      f.input :msp
      f.input :left_engine_hour
      f.input :left_engine_cylce
      f.input :right_engine_hour
      f.input :right_engine_cycle
      f.input :avionic
      f.input :year_painted
      f.input :exterior
      f.input :interior
      f.input :inspection
      f.input :condition
      f.input :registration
      f.input :image, hint: f.aircraft.image? ? image_tag(aircraft.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
  		end
  		f.actions
  	end
  end
