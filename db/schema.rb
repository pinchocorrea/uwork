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

ActiveRecord::Schema.define(version: 20140527142438) do

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

  create_table "exp_laborals", force: true do |t|
    t.integer  "cod"
    t.text     "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "secondlastname"
    t.string   "rut"
    t.string   "fechaNac"
    t.string   "email"
    t.integer  "cel"
    t.string   "sexo"
    t.integer  "hijos"
    t.string   "comunaId"
    t.string   "empresaCel"
    t.string   "contratoCel"
    t.string   "colegioId"
    t.string   "universidadId"
    t.string   "carreraId"
    t.integer  "fechaIngreso"
    t.integer  "duracion"
    t.integer  "fechaEgreso"
    t.string   "nivelIngles"
    t.string   "nivelAleman"
    t.string   "nivelPortugues"
    t.string   "nivelFrances"
    t.string   "nivelChino"
    t.string   "OtrosIdiomas"
    t.integer  "rentaHora"
    t.text     "sectorId",       limit: 255
    t.string   "experiencia"
    t.text     "experiencias",   limit: 255
    t.string   "auto"
    t.string   "marcaAuto"
    t.string   "anioAuto"
    t.text     "hobbies",        limit: 255
    t.text     "deportes",       limit: 255
  end

  create_table "trabajo_preferentes", force: true do |t|
    t.integer  "cod"
    t.text     "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universidads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
