class Blog < ApplicationRecord
    belongs_to :student
    validates :content, length: { maximum: 140 },
                        presence: true
end
