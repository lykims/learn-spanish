class User < ApplicationRecord
    before_save { self.username = username.downcase }

    VALID_NAME_REGEX = /\A[a-zàâçéèêëîïôûùüÿñæœ ,.'-]+\z/i
    validates :name, presence: true, length: { maximum: 50 },
                    format: { with: VALID_NAME_REGEX }

    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_USERNAME_REGEX = /\A[a-z0-9\-_.]+\z/i
    validates :username, presence: true, length: { maximum: 50 },
                    format: { with: VALID_USERNAME_REGEX },
                    uniqueness: { case_sensitive: false }

    validates :password, presence: true, length: { minimum: 8 }

    has_secure_password
end
