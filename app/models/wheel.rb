class Wheel < ActiveRecord::Base
  belongs_to :brand
  belongs_to :side
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  delegate :name, to: :brand, prefix: true

  def full_name
    "#{brand_name} #{name} #{title}"
  end

  def image
    images.first.data.url(:original)
  end
end
