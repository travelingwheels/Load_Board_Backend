class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :truck_number

  has_many :loads, serializer: LoadSerializer
  has_many :comments, serializer: CommentSerializer
  has_many :directions, serilizer: DirectionSerializer

end
