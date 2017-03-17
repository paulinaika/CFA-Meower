class User < ApplicationRecord
  has_many :meows
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
          acts_as_follower
          acts_as_followable
          acts_as_liker
          acts_as_mentionable


end
