class Post < ActiveRecord::Base
  belongs_to :bulletin
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader
  validates :content, :presence => { :message => "Please write something."}
end
