class User < ApplicationRecord
  validate :usersame, :email, presence: true, uniqueness: true
  validate :usersame, length: { minimum: 6 }
  validate :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
  validate :birth_date, camparison: { less_than: Time.zone.today, message: "can't be in the future" }
  validate :birth_date, camparison: { greater_than: 120.year.ago, message: "can't be more than 120 years ago" }
#   valifates_with BirthdateValidator
end

# class BirthdateValidator < ActiveModel::Validator
#   def validate(record)
#     if record.birth_date =< 1903
#       record.errors.add :base, "This person is probably died"
#     end
#   end
# end
