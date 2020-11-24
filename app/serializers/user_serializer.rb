class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :dob
end