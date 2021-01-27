class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :truck_number
  # has_many :loads, serializer: LoadSerializer
end
