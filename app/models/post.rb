class Post < ActiveRecord::Base
  attr_accessible: :body, :title, :image
  has_many :comments
  belongs_to :user
  accepts_nested_attributes_for :comments
  validates_presence_of :body, :title
end
