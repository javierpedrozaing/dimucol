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

ActiveRecord::Schema.define(version: 20160301214701) do

  create_table "albums", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "profile_id"
  end

  create_table "amigos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "anuncios", force: :cascade do |t|
    t.string   "tipoAnuncio"
    t.string   "ubicacion"
    t.string   "fechaInicial_datetime"
    t.datetime "fechaFinal"
    t.integer  "valor"
    t.text     "caracteristica"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "texto"
    t.integer  "like"
    t.datetime "fecha"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "publication_id"
  end

  create_table "contratos", force: :cascade do |t|
    t.string   "fechaInicial_datetime"
    t.datetime "fechaFinal"
    t.integer  "valorTotal"
    t.integer  "descuento"
    t.string   "estado"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "contratos_plans", force: :cascade do |t|
    t.integer  "valorTotal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "plan_id"
    t.integer  "contrato_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "text"
    t.datetime "fecha"
    t.string   "file_name"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages_users", force: :cascade do |t|
    t.integer  "message_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string   "tipoNotificacion"
    t.date     "fecha"
    t.text     "texto"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pais", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "fiel_name"
    t.string   "content_type"
    t.integer  "file_size"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "profile_id"
    t.integer  "image_id"
    t.string   "image_type"
  end

  add_index "photos", ["image_type", "image_id"], name: "index_photos_on_image_type_and_image_id"

  create_table "plans", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "valor"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "profile_id"
    t.string   "fechaInicial"
    t.string   "fechaFinal"
    t.string   "sort_coeficient"
  end

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
    t.string   "nombrePerfil"
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
    t.integer  "user_id"
  end

  add_index "publications", ["user_id"], name: "index_publications_on_user_id"

  create_table "publicities", force: :cascade do |t|
    t.string   "logo"
    t.string   "nombreComercial"
    t.string   "email"
    t.string   "direccion"
    t.integer  "telefono"
    t.integer  "celular"
    t.string   "web"
    t.string   "experiencia"
    t.string   "repertorio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "respuesta_comentarios", force: :cascade do |t|
    t.text     "texto"
    t.integer  "like"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "comment_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "nameRole"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seccion_profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "seccion_id"
    t.integer  "profile_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tablealbums_photos", id: false, force: :cascade do |t|
    t.integer "albums_id"
    t.integer "photos_id"
  end

  add_index "tablealbums_photos", ["albums_id"], name: "index_tablealbums_photos_on_albums_id"
  add_index "tablealbums_photos", ["photos_id"], name: "index_tablealbums_photos_on_photos_id"

  create_table "tags", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "role_id"
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
    t.integer  "profile_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videos", force: :cascade do |t|
    t.string   "file_name"
    t.string   "url"
    t.integer  "like"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "profile_id"
  end

end
