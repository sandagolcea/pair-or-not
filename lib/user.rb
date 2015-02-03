class User
  include DataMapper::Resource

  has 1, :cohort

  property :id, Serial
  property :name, String
  property :email, String
  property :github_handle, String
  property :twitter_handle, String

  has n, :likes, :child_key => [ :source_id ]
  has n, :likes_me, :child_key => [ :target_id ]
  has n, :matches, self, :through => :likes, :via => :target

  has n, :messages_sent_by_me, 'Message', :child_key => [:sender_id]
  has n, :messages_received_by_me, 'Message', :child_key => [:recipient_id]

  # has n, :sent_messages, self,
  #  :through => :messages_sent_by_me, 
  #  :via     => :sender

  # has n, :received_messages, self,
  #  :through => :messages_received_by_me,
  #  :via     => :recipient
end
