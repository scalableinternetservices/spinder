class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, stretches: 13, pepper: ''

  acts_as_messageable

  def name
    # this needs to be set to user email or something
    "#{email}"
  end

  def mailboxer_email(object)
    nil
  end

end
