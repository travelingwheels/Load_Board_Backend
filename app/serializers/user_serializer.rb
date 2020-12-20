class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :truck_number
end
