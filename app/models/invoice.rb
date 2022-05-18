class Invoice < ApplicationRecord
	acts_as_tenant(:company)
end
