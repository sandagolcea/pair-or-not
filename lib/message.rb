class Message
  
  include DataMapper::Resource

  belongs_to :sender, 'User', :key => true
  belongs_to :recipient, 'User', :key => true

  property :id, Serial
  property :text, Text
  property :read, Boolean, :default  => false
  property :deleted, Boolean, :default => false

end