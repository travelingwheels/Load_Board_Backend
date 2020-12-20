class LoadSerializer
  include FastJsonapi::ObjectSerializer
  attributes :customer_name, :city, :state
end
