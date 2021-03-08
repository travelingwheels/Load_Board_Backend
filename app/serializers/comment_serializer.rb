class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content

 belongs_to :user, serializer: UserSerializer
 belongs_to :direction, serializer: DirectionSerializer
end