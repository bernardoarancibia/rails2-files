# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100706053605) do

  create_table "vendedores", :force => true do |t|
    t.integer  "rut",                                            :null => false
    t.string   "password",      :limit => 30,                    :null => false
    t.boolean  "administrador",               :default => false, :null => false
    t.string   "nombre",        :limit => 30
    t.string   "apellidos",     :limit => 30
    t.integer  "cod_fono",      :limit => 1
    t.integer  "num_fono"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
