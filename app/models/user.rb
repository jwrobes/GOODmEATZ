class User < ApplicationRecord
  include Clearance::User
  validates :admin, presence: true
end
