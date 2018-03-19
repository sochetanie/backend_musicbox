class PlaylistSerializer < ActiveModel::Serializer
  has_many :videos
  attributes :id, :title, :user_id
end