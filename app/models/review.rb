class Review < ApplicationRecord
  validates :report_title, :student_name, presence: true
  # enum :report_title, [:github, :linkedin, :resume, :cover_page, :portfolio]
end
