class Cour < ApplicationRecord
  has_one_attached :thumbnail do |attachable|
    attachable.variant :thumb, resize_to_limit: [1000, 900]
    attachable.variant :thumbindex, resize_to_limit: [500, 400]
  end

  has_one_attached :video

  validates_presence_of :title, :thumbnail

  has_rich_text :content
end
