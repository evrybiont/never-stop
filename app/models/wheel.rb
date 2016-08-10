class Wheel < ActiveRecord::Base
  include Filterable

  belongs_to :brand
  belongs_to :side
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  delegate :name, to: :brand, prefix: true

  scope :active, ->{includes :brand, :images}
  scope :brand,  ->(brand_id){where brand_id: brand_id}
  scope :radius, ->(radius){where radius: radius}
  scope :side,   ->(side_id){where side_id: side_id}
  scope :width,  ->(width){where width: width}
  scope :height, ->(height){where height: height}

  def full_name
    "#{brand_name} #{name} #{title}"
  end

  def avatar
    images.first.data.url(:medium)
  end
end
