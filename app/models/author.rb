class Author < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  validates :user_id , :presence => true

  validates_uniqueness_of :user_id, scope: [:user_id, :project_id]

end
