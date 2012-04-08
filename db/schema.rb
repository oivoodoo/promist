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

ActiveRecord::Schema.define(:version => 20091025141309) do

  create_table "banners", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "position"
    t.string   "banner_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.integer  "category_collection_id"
    t.integer  "position",               :default => 0
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.text     "description"
  end

  create_table "category_collections", :force => true do |t|
    t.string   "title"
    t.string   "category_collection_type"
    t.integer  "position",                 :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_auth", :force => true do |t|
    t.string  "user",  :limit => 50
    t.string  "pass",  :limit => 32
    t.string  "name",  :limit => 50
    t.string  "email", :limit => 50
    t.string  "tel",   :limit => 50
    t.boolean "allow"
    t.integer "date"
    t.string  "ip",    :limit => 20
  end

  create_table "cms_auth_log", :force => true do |t|
    t.integer "admin"
    t.string  "action", :limit => 20
    t.string  "url"
    t.integer "date"
    t.string  "ip",     :limit => 20
  end

  create_table "cms_auth_module", :force => true do |t|
    t.integer "admin"
    t.string  "module",     :limit => 50
    t.boolean "mod_add"
    t.boolean "mod_edit"
    t.boolean "mod_delete"
    t.boolean "mod_all"
    t.integer "date"
    t.string  "user",       :limit => 50
    t.string  "ip",         :limit => 20
  end

  create_table "cms_back", :force => true do |t|
    t.string  "name",      :limit => 50
    t.string  "contact",   :limit => 50
    t.text    "text"
    t.text    "text_full"
    t.string  "user_ip",   :limit => 20
    t.boolean "allow"
    t.integer "date"
    t.string  "user",      :limit => 50
    t.string  "ip",        :limit => 20
  end

  create_table "cms_banlist", :force => true do |t|
    t.text    "ban_text"
    t.integer "ban_date"
    t.string  "ban_ip",   :limit => 20
    t.integer "date"
    t.string  "user",     :limit => 50
    t.string  "ip",       :limit => 20
  end

  create_table "cms_block", :force => true do |t|
    t.integer "num"
    t.string  "title"
    t.text    "text"
    t.integer "comments"
    t.string  "rating",   :limit => 10
    t.integer "views"
    t.boolean "allow"
    t.integer "date"
    t.string  "user",     :limit => 50
    t.string  "ip",       :limit => 20
  end

  create_table "cms_catalog", :force => true do |t|
    t.integer "foto"
    t.string  "image"
    t.string  "title"
    t.boolean "allow"
    t.integer "date"
    t.string  "user",  :limit => 50
    t.string  "ip",    :limit => 20
  end

  create_table "cms_catalog_foto", :force => true do |t|
    t.integer "razdel"
    t.integer "num"
    t.string  "title"
    t.text    "text"
    t.boolean "allow"
    t.integer "date"
    t.string  "user",   :limit => 50
    t.string  "ip",     :limit => 20
  end

  create_table "cms_catalog_title", :force => true do |t|
    t.integer "num"
    t.string  "image",     :limit => 50
    t.string  "title"
    t.text    "text"
    t.text    "text_full"
    t.boolean "allow"
    t.integer "date"
    t.string  "user",      :limit => 50
    t.string  "ip",        :limit => 20
  end

  create_table "cms_libs", :force => true do |t|
    t.integer "libs"
    t.integer "num"
    t.string  "razdel"
    t.string  "title"
    t.text    "text"
    t.text    "text_full", :limit => 2147483647
    t.integer "comments"
    t.string  "rating",    :limit => 10
    t.integer "views"
    t.boolean "allow"
    t.integer "date"
    t.string  "user",      :limit => 50
    t.string  "ip",        :limit => 20
  end

  create_table "cms_libs_title", :force => true do |t|
    t.integer "num"
    t.string  "title"
    t.boolean "allow"
    t.integer "date"
    t.string  "user",  :limit => 50
    t.string  "ip",    :limit => 20
  end

  create_table "cms_upload", :force => true do |t|
    t.string  "image"
    t.integer "date"
    t.string  "user",  :limit => 50
    t.string  "ip",    :limit => 20
  end

  create_table "cns_advert_pages", :force => true do |t|
    t.text "string", :null => false
    t.text "title",  :null => false
  end

# Could not dump table "cns_advert_referers" because of following StandardError
#   Unknown type 'set('equals','contains','starts','ends')' for column 'referer_logic'

  create_table "cns_cache_advert_cost", :force => true do |t|
    t.string  "referer",                     :default => "", :null => false
    t.string  "referer_logic", :limit => 32, :default => "", :null => false
    t.string  "page",                        :default => "", :null => false
    t.string  "page_logic",    :limit => 32, :default => "", :null => false
    t.integer "destcount",                   :default => 0,  :null => false
    t.integer "refcount",                    :default => 0,  :null => false
    t.date    "date",                                        :null => false
  end

  add_index "cns_cache_advert_cost", ["date"], :name => "date"
  add_index "cns_cache_advert_cost", ["page"], :name => "page"
  add_index "cns_cache_advert_cost", ["page_logic"], :name => "page_logic"
  add_index "cns_cache_advert_cost", ["referer"], :name => "referer"
  add_index "cns_cache_advert_cost", ["referer_logic"], :name => "referer_logic"

  create_table "cns_cache_destinations", :force => true do |t|
    t.string  "destination", :default => "", :null => false
    t.integer "count",       :default => 0,  :null => false
    t.date    "date",                        :null => false
  end

  add_index "cns_cache_destinations", ["date"], :name => "date"
  add_index "cns_cache_destinations", ["destination"], :name => "destination"

  create_table "cns_cache_referers", :force => true do |t|
    t.string  "referer", :limit => 32, :default => "", :null => false
    t.integer "count",   :limit => 3,  :default => 0,  :null => false
    t.date    "date",                                  :null => false
  end

  add_index "cns_cache_referers", ["date"], :name => "date"
  add_index "cns_cache_referers", ["referer"], :name => "referer"

  create_table "cns_cache_robots", :force => true do |t|
    t.integer "count", :default => 0,  :null => false
    t.date    "date",                  :null => false
    t.string  "title", :default => "", :null => false
  end

  add_index "cns_cache_robots", ["date"], :name => "date"
  add_index "cns_cache_robots", ["title"], :name => "title"

# Could not dump table "cns_cache_servers" because of following StandardError
#   Unknown type 'set('yes','no')' for column 'ignore_www'

# Could not dump table "cns_config" because of following StandardError
#   Unknown type 'set('800','1024')' for column 'resolution'

  create_table "cns_counter", :id => false, :force => true do |t|
    t.integer "hits",      :limit => 8, :default => 0, :null => false
    t.integer "hosts",     :limit => 8, :default => 0, :null => false
    t.integer "t_hits",    :limit => 8, :default => 0, :null => false
    t.integer "t_hosts",   :limit => 8, :default => 0, :null => false
    t.integer "last",      :limit => 1
    t.integer "visible",                :default => 1
    t.integer "t_users",   :limit => 8, :default => 0, :null => false
    t.integer "users",     :limit => 8, :default => 0, :null => false
    t.integer "u_hits",    :limit => 8, :default => 0, :null => false
    t.integer "u_hosts",   :limit => 8, :default => 0, :null => false
    t.integer "u_t_hits",  :limit => 8, :default => 0, :null => false
    t.integer "u_t_hosts", :limit => 8, :default => 0, :null => false
  end

  create_table "cns_counter_total", :id => false, :force => true do |t|
    t.integer  "hits"
    t.integer  "hosts"
    t.integer  "u_hits",  :default => 0, :null => false
    t.integer  "u_hosts", :default => 0, :null => false
    t.datetime "date"
    t.integer  "users"
    t.integer  "readers", :default => 0, :null => false
  end

  add_index "cns_counter_total", ["date"], :name => "idx"

  create_table "cns_data", :force => true do |t|
    t.integer "type", :limit => 1, :default => 0,  :null => false
    t.string  "d1",                :default => "", :null => false
    t.string  "d2",                :default => "", :null => false
    t.string  "d3",                :default => "", :null => false
    t.string  "d4",                :default => "", :null => false
    t.string  "d5",                :default => "", :null => false
  end

  add_index "cns_data", ["type"], :name => "type"

  create_table "cns_filteritems", :primary_key => "item_id", :force => true do |t|
    t.integer "id_filter", :default => 0,  :null => false
    t.integer "what",      :default => 0,  :null => false
    t.integer "logic",     :default => 0,  :null => false
    t.string  "value",     :default => "", :null => false
    t.integer "type",      :default => 0,  :null => false
  end

  add_index "cns_filteritems", ["id_filter"], :name => "id_filter"

# Could not dump table "cns_filterlist" because of following StandardError
#   Unknown type 'set('normal','combined')' for column 'type'

  create_table "cns_filterrelation", :id => false, :force => true do |t|
    t.integer "id_filter",      :default => 0, :null => false
    t.integer "id_filter_used", :default => 0, :null => false
  end

  add_index "cns_filterrelation", ["id_filter", "id_filter_used"], :name => "id_filter"

  create_table "cns_goodies", :id => false, :force => true do |t|
    t.text "url"
    t.text "name"
  end

  create_table "cns_languages", :primary_key => "code", :force => true do |t|
    t.text "eng"
  end

  add_index "cns_languages", ["code"], :name => "code_idx"

# Could not dump table "cns_log" because of following StandardError
#   Unknown type 'set('user','robot')' for column 'isrobot'

# Could not dump table "cns_openstat" because of following StandardError
#   Unknown type 'set('compaign','banner')' for column 'type'

  create_table "cns_rss_cache", :primary_key => "rss_id", :force => true do |t|
    t.string  "title",                    :default => "",           :null => false
    t.string  "url",                      :default => "",           :null => false
    t.date    "date",                                               :null => false
    t.string  "type",        :limit => 0, :default => "standalone", :null => false
    t.integer "subscribers",              :default => 0,            :null => false
  end

  add_index "cns_rss_cache", ["date"], :name => "date"
  add_index "cns_rss_cache", ["title"], :name => "channel"
  add_index "cns_rss_cache", ["type"], :name => "type"
  add_index "cns_rss_cache", ["url"], :name => "url"

  create_table "cns_rss_rebuild", :id => false, :force => true do |t|
    t.integer "last", :null => false
  end

  create_table "cns_size", :primary_key => "date", :force => true do |t|
    t.integer "size", :default => 0, :null => false
  end

  create_table "cns_slide_cache", :id => false, :force => true do |t|
    t.integer "id_slice", :default => 0, :null => false
    t.integer "uid",      :default => 0, :null => false
  end

  add_index "cns_slide_cache", ["id_slice"], :name => "id_slice"

  create_table "cns_slides", :primary_key => "slide_id", :force => true do |t|
    t.integer  "id_filter",  :default => 0, :null => false
    t.datetime "date_start",                :null => false
    t.datetime "date_end",                  :null => false
  end

  create_table "cns_subnets", :primary_key => "uniqueid", :force => true do |t|
    t.integer "ip1",   :limit => 8, :default => 0, :null => false
    t.integer "ip2",   :limit => 8, :default => 0, :null => false
    t.text    "title",                             :null => false
    t.integer "id",                 :default => 0, :null => false
  end

  add_index "cns_subnets", ["id"], :name => "id"

  create_table "cns_today", :id => false, :force => true do |t|
    t.integer  "ip",      :limit => 8,   :default => 0, :null => false
    t.integer  "proxy",   :limit => 8,   :default => 0, :null => false
    t.datetime "date",                                  :null => false
    t.integer  "uid",                    :default => 0, :null => false
    t.integer  "tid",                    :default => 0, :null => false
    t.integer  "hid",                    :default => 0, :null => false
    t.string   "city",    :limit => 128
    t.integer  "country", :limit => 2
  end

# Could not dump table "cns_users" because of following StandardError
#   Unknown type 'set('admin','guest')' for column 'access'

  create_table "cns_users_access", :id => false, :force => true do |t|
    t.integer "id_user", :default => 0,  :null => false
    t.string  "report",  :default => "", :null => false
  end

  create_table "cns_users_sessions", :primary_key => "hash", :force => true do |t|
    t.integer  "id_user", :default => 0, :null => false
    t.datetime "last",                   :null => false
  end

  create_table "cns_who_cache", :id => false, :force => true do |t|
    t.date    "date",                                :null => false
    t.string  "title", :limit => 64, :default => "", :null => false
    t.integer "count"
  end

  create_table "images", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title"
    t.integer  "position"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "item_type"
    t.integer  "category_id"
    t.integer  "position",         :default => 0
    t.integer  "main_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "main_image_id"
    t.text     "bottom_content"
    t.string   "meta_keywords"
    t.text     "meta_description"
  end

  create_table "library_articles", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.text     "content"
    t.string   "library_type"
    t.integer  "position",            :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
    t.integer  "library_category_id"
    t.boolean  "is_checked"
    t.string   "meta_keywords"
    t.text     "meta_description"
  end

  create_table "library_categories", :force => true do |t|
    t.string   "title"
    t.integer  "position",   :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_items", :force => true do |t|
    t.string   "main_item_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "page_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
  end

  create_table "photos", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title"
    t.integer  "position"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiny_mce_photos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.string   "content_type"
    t.string   "filename"
    t.integer  "size"
    t.integer  "parent_id"
    t.string   "thumbnail"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
