class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  validates :email, presence: true
  validates_uniqueness_of :username
  validates_uniqueness_of :email

  def email_changed?
    false
  end

end
