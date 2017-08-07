class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:site_admin], multiple: false)                                      ##
  ############################################################################################ 
 

  a = []
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates_presence_of :name
  
	has_many :comments, dependent: :destroy
  
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