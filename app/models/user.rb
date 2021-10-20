class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates_presence_of :names
  def first_name
    self.names.split.first
  end

  def last_name
    self.names.split.last
  end
end
