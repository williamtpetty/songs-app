class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :album, :artist, :year, :created_at, :updated_at, :new?
end
