class Image
  include MongoMapper::EmbeddedDocument

  key :url, String
  key :user_id, String
  key :is_profile, Boolean, :default => false


end
