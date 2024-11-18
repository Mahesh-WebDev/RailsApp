class Friend < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: { notice: "Name Cant be blank" }
  validates :last_name, presence: { notice: "Name Cant be blank" }
  validates :email, presence: { notice: " Email can't be blank" },
                      uniqueness: { notice: "has already been taken" },
                      format: { with: /\A[\w\.-]+@[\w\.-]+\.[a-zA-Z]{2,}\z/, notice: "is not a valid email address" }
end
