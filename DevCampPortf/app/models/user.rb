class User < ApplicationRecord
  a = []
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates_presence_of :name
  
  a = self.name.split
        
  def first_name
    a = []
    a = self.name.split
    a[0]
  end
  
  if !a[0] && !a[-1]
    def mid_name
      a = []
      a = self.name.split
    end
  end
  
  if a[0] != a[-1]
    def last_name
      a = []
      a = self.name.split
      a[-1]
    end
  end
end