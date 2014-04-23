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

ActiveRecord::Schema.define(version: 20140421201449) do

  create_table "autos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carreras", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colegios", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comunas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "secondlastname"
    t.string   "rut"
    t.string   "fechaNac"
    t.string   "comunaId"
    t.string   "colegioId"
    t.string   "universidadId"
    t.string   "carreraId"
    t.integer  "fechaIngreso"
    t.integer  "duracion"
    t.integer  "fechaEgreso"
    t.string   "nivelIngles"
    t.string   "dispInicio"
    t.string   "dispFin"
    t.string   "dispDiaHra"
    t.string   "experiencia"
    t.string   "experiencias"
    t.integer  "rentaHora"
    t.string   "sectorId"
    t.string   "auto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.integer  "cel"
    t.string   "sexo"
    t.integer  "hijos"
    t.string   "Idiomas"
    t.string   "marcaAuto"
    t.string   "modeloAuto"
    t.string   "anioAuto"
    t.string   "empresaCel"
    t.string   "contratoCel"
    t.string   "nivelAleman"
    t.string   "nivelPortugues"
    t.string   "nivelFrances"
    t.string   "nivelChino"
  end

  create_table "universidads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
