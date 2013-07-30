class Wink
  include MongoMapper::Document

  key :to_id, String
  key :from_id, String

  belongs_to :to, :class_name  => "User"
  belongs_to :from, :class_name  => "User"

end
