class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :created_at
end
