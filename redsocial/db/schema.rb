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

ActiveRecord::Schema.define(version: 20160217223051) do

  create_table "profiles", force: :cascade do |t|
    t.string   "fotoPerfil"
    t.string   "fotoPortada"
    t.text     "descripcion"
    t.date     "fechaNacimiento"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "google"
    t.string   "youtube"
    t.string   "instagram"
    t.string   "celular"
    t.string   "telefono"
    t.string   "lugarNacimiento"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "publications", force: :cascade do |t|
    t.text     "texto"
    t.date     "fecha"
    t.string   "tipoPublicacion"
    t.integer  "like"
    t.string   "imagen"
    t.string   "video"
    t.string   "ubicacion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "nombre_perfil"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
