class Contact < ApplicationRecord
    has_many :phones, dependent: :restrict_with_error
end
