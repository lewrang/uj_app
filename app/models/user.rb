class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :first_name, :last_name, presence: true
  
  def full_name
    "#{first_name} #{last_name}"
  end
  def initials
    "#{first_name[0].capitalize}#{last_name[0].capitalize}"
#    first_name[0].capitalize + last_name[0].capitalize
  end
end
