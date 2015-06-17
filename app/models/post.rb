class Post < ActiveRecord::Base
  # attr_accessor :body, :title, :image
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :comments
  belongs_to :user
  accepts_nested_attributes_for :comments
  validates_presence_of :body, :title
end
