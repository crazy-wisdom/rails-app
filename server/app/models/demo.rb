class Demo < ApplicationRecord
  validates_presence_of :title, :content, :status

  enum status: [:draft, :published]
end
