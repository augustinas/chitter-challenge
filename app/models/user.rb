require 'bcrypt'

class User

  include DataMapper::Resource

  property :id, Serial
  property :username, String, unique: true,
                              message: 'Sorry, this username is not available'
  property :name, String
  property :email, String, unique: true,
                           message: 'There is already an account'\
                                    'registered to this email'
  property :password_digest, Text
  property :created_at, DateTime
  property :updated_at, DateTime

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

end
