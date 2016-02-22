class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :fullname, presence:true, length: {maximum:50}

  validates :f_name, presence:true, length: {maximum:20}
  validates :l_name, presence:true, length: {maximum:20}

  def fullname
     
     [f_name,l_name].join(' ')
  end
end
