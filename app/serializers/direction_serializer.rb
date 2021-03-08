class DirectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content

  has_many :comments, serializer: CommentSerializer
  belongs_to :load, serializer: LoadSerializer
  has_many :users, serializer: UserSerializer
end
