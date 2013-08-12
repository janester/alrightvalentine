class User
  include MongoMapper::Document
  include ActiveModel::SecurePassword
  key :first, String
  key :last, String
  key :email, String, :unique => true
  key :password_digest, String
  key :is_female, Boolean
  key :occupation, String
  key :sign_ins, Integer, :default => 0
  key :age, Integer
  key :ed_level, String
  key :movies, Array
  key :books, Array
  key :television, Array
  key :hobbies, String
  key :description, String
  key :tagline, String
  key :interested_female, Boolean
  many :images
  many :to_messages, :class_name => "Message", :foreign_key => "to_id"
  many :from_messages, :class_name => "Message", :foreign_key => "from_id"
  many :to_winks, :class_name => "Wink", :foreign_key => "to_id"
  many :from_winks, :class_name => "Wink", :foreign_key => "from_id"
  timestamps!
  has_secure_password
  attr_accessible :first, :last, :email, :password_confirmation, :password, :is_female, :occupation, :sign_ins, :age, :ed_level, :movies, :books, :television, :hobbies, :description, :tagline, :interested_female


  before_update :format_name, :format_interests



  def format_name
    self.first = self.first.capitalize if self.first.present?
    self.last = self.last.capitalize if self.first.present?
  end

  def format_interests
    self.books.map!{|x| x.capitalize}
    self.movies.map!{|x| x.capitalize}
    self.television.map!{|x| x.capitalize}
  end
end
