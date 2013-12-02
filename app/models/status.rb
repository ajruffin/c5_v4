class Status < ActiveRecord::Base
  default_scope order: 'created_at DESC'
  belongs_to :business
  validates :content, presence: true, length: { minimum: 2}
end
