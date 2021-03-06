class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  has_many :inventories
  has_many :material_requests, class_name: 'MaterialRequest', foreign_key: 'who_requested_id'
  has_many :material_requests, class_name: 'MaterialRequest', foreign_key: 'who_authorized_id'
  has_many :records
end
