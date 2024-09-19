class Api::V1::AuthController < ApplicationController
    def register
        user = User.new(user_params)
        if user.save
            render json: { message: "Usuario registrado exitosamente" }, status: :created
        else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # POST /login
    def login
        user = User.find_by(username: params[:username])
        # Verifica si el usuario existe y si la contraseña es correct
        if user && user.authenticate(params[:password])
            render json: { message: "Autenticación satisfactoria" }, status: :ok
        else
            render json: { error: "Usuario o contraseña incorrectos" }, status: :unauthorized
        end
    end

    private

    # Método privado para permitir solo los parámetros requeridos
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
