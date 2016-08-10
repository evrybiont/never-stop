class Image < ActiveRecord::Base
  belongs_to :wheel

  has_attached_file :data, styles: {medium: '300x300#'}
  validates_attachment :data, presence: true,
                       content_type: {content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']},
                       size: {in: 0..3.megabytes}
end
