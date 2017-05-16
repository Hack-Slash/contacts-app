class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups

  def self.all_johns
    Contact.where(first_name: "Joe")
  end


end
