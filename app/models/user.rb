class User < ActiveRecord::Base

	has_many :coches

	validates :user , uniqueness: { message:"no se puede aceptar por que ya existe el usuario"} , presence: {message: "no se puede dejar vacio es obligatorio"}
	validates :nombre  , presence: {message: "no se puede dejar vacio es obligatorio"}



end
