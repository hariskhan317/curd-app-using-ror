class User < ApplicationRecord
  has_rich_text :description
  belongs_to :department
  belongs_to :country
end
