class Project < ActiveRecord::Base
  attr_accessible :description, :name

  belongs_to :user

  validates :name, presence: true, uniqueness: true

  def to_param
	"#{id}-#{name}".parameterize
  end
end
