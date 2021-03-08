class LoadSerializer
  include FastJsonapi::ObjectSerializer
  attributes :customer_name, :city, :state
  has_one :direction, serializer: DirectionSerializer
  belongs_to :user, serializer: UserSerializer
end
