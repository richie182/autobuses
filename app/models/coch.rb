class Coch < ActiveRecord::Base

belongs_to :user


	validates :matricula , uniqueness: { message:"no se puede aceptar por que ya existe la matirucla"} , presence: {message: "no se puede dejar vacio es obligatorio"}


end
