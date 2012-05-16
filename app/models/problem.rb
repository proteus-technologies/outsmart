class Problem < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :text_description, :title, :user_id
  has_many :solutions
  belongs_to :user
  
end
