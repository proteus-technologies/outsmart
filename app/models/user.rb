class User < ActiveRecord::Base
  attr_accessible :Is_Admin, :Problem_ID, :Solution_ID, :User_ID, :creation_date, :email, :name, :password, :phone, :updated_date
end
