class TableGame < ApplicationRecord
    has_one_attached :rule
    has_one_attached :board
    has_many_attached :pieces

    validates :rule, content_type: { in: 'application/pdf', message: 'is not a PDF' }
end
