class NoteSerializer < ActiveModel::Serializer
  attributes :user, :content, :lat, :lng
end