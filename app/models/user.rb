class User < ActiveRecord::Base
  validates :first_name,:last_name,:username,:email,:age,presence:true
  validates :username, length:{minimum:5}
  has_secure_password
end
