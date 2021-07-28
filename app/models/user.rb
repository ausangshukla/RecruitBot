class User < ApplicationRecord
  
  validates :first_name, :last_name, :email, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :validatable

  ROLES = ["User", "Admin"]

  belongs_to :client, optional: true

  before_create :setup

  def full_name
    first_name + " " + last_name
  end

  def setup
    self.role ||= "User"
  end

end
