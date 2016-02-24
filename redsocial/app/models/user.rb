class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  attr_accessible :nombres, :apellidos, :nombre_perfil, :email, :password, :password_confirmation, :encrypted_password

  has_one :profile
  has_many :publication 
  has_many :messages_users
  has_many :messages, :through => :messages_users
  has_many :anuncios
end
