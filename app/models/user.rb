class User < ApplicationRecord
  has_secure_password

  valdiates :password,
  presence: true,
  length: { minimum: 6, maximum: 20}
end
