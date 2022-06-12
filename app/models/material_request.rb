class MaterialRequest < ApplicationRecord
  belongs_to :who_authorized, class_name: 'User'
  belongs_to :who_requested, class_name: 'User'
  belongs_to :material
end
