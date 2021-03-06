class User < ApplicationRecord
    has_many :answers

    attr_accessor :remember_token

    before_save { self.username = username.downcase }

    VALID_NAME_REGEX = /\A[a-zàâçéèêëîïôûùüÿñæœ ,.'-]+\z/i
    validates :name, presence: true, length: { maximum: 50 },
                    format: { with: VALID_NAME_REGEX }

    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_USERNAME_REGEX = /\A[a-z0-9\-_.]+\z/i
    validates :username, presence: true, length: { maximum: 50 },
                    format: { with: VALID_USERNAME_REGEX },
                    uniqueness: { case_sensitive: false }

    validates :password, presence: true, length: { minimum: 8 }, allow_nil: true

    has_secure_password

    # Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    # Returns a random token.
    def User.new_token
        SecureRandom.urlsafe_base64
    end

    # Remembers a user in the database for use in persistent sessions.
    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end

    # Returns true if the given token matches the digest.
    def authenticated?(remember_token)
        return false if remember_digest.nil?
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

    # Forgets a user.
    def forget
        update_attribute(:remember_digest, nil)
    end
end
