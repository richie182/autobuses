class Empleado < ActiveRecord::Base

	#has_many :categoriums

	validates :usuario , uniqueness: { message:"no se puede aceptar por que ya existe el usuario"} , presence: {message: "no se puede dejar vacio es obligatorio"}



	validates :contraseña , presence: {message: "falta contaseña"}

	validates :nombre , presence:{message:"falta nombre"}

end
