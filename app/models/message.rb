class Message
  include MongoMapper::Document

  key :content, String
  key :to_id, ObjectId
  key :from_id, ObjectId

  timestamps!

  belongs_to :to, :class_name  => "User"
  belongs_to :from, :class_name  => "User"
end
