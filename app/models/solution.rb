class Solution < ActiveRecord::Base
  attr_accessible :problem_ID, :solution_file_url, :text_description, :user_ID
  belongs_to :problem
end
