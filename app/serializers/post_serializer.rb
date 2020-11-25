class PostSerializer < ActiveModel::Serializer
  attributes :id, :text_content, :user_id
end