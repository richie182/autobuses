# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141206073203) do

  create_table "boletos", force: true do |t|
    t.integer  "folio"
    t.string   "usuario"
    t.string   "id_trayecto"
    t.datetime "fecha_venta"
    t.integer  "total"
    t.integer  "puntos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria", force: true do |t|
    t.string   "nombre"
    t.string   "categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coches", force: true do |t|
    t.string   "matricula"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empleados", force: true do |t|
    t.string   "usuario"
    t.string   "contraseña"
    t.string   "nombre"
    t.string   "telefono"
    t.string   "corre"
    t.string   "direccion"
    t.integer  "hrtrabajada"
    t.string   "categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terminal_llegadas", force: true do |t|
    t.string   "idterminal2"
    t.string   "nombreterminal2"
    t.string   "telefono2"
    t.string   "direccion2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terminales", force: true do |t|
    t.string   "idterminal"
    t.string   "nombreterminal"
    t.string   "telefono"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.string   "folio"
    t.string   "nombre"
    t.string   "correo"
    t.string   "vendido"
    t.string   "trayecto"
    t.integer  "precio"
    t.integer  "puntos"
    t.string   "viaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trayectos", force: true do |t|
    t.string   "id_trayecto"
    t.string   "idterminal"
    t.string   "idterminal2"
    t.datetime "hora_salida"
    t.datetime "hora_llegada"
    t.integer  "precio"
    t.integer  "puntos"
    t.string   "idautobus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "usuario"
    t.string   "contraseña"
    t.string   "nombre"
    t.integer  "edad"
    t.string   "telefono"
    t.string   "correo"
    t.string   "direccion"
    t.integer  "puntos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
