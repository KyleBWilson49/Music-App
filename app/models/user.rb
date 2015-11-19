# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text             not null
#  password_digest :text             not null
#  session_token   :text             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, :session_token, presence: true
  validates :password, presence: true, length: { minimum: 6 }

  def self.find_by_credentials(email, password)
  end

  def reset_session_token!
  end

  def ensure_session_token
  end

  def password=(password)
    password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    
  end

  private
  def self.generate_session_token
  end
end
