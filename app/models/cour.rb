class Cour < ApplicationRecord
  has_one_attached :thumbnail do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
  end

  has_one_attached :video do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  validates_presence_of :title, :thumbnail

  has_rich_text :content
end
