class Book < ApplicationRecord
  validates_presence_of :title, :language, :link
  validates :pages, numericality: { only_integer: true }
  validates :year, numericality: { only_integer: true }

end