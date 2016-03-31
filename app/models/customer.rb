class Customer < ActiveRecord::Base
  validates :name, :phone, :email, presence: true
  validates :phone, :email, uniqueness: true
end
