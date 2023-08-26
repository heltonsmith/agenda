class Client < ApplicationRecord
    has_many :calls 
    has_many :users, through: :calls 
    has_many :reasons, through: :calls
end
