class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_secure_password # Esto añade la capacidad de gestionar contraseñas seguras con bcrypt
end
