class Supplier::Supplier < ActiveRecord::Base
	has_many :devices
end