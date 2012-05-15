class Problem < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :text_description, :title, :user_id
end
