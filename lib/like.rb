class Like
  include DataMapper::Resource

  belongs_to :source, 'User', :key => true
  belongs_to :targer, 'User', :key => true
end


# 1 class Person
#  2   include DataMapper::Resource
#  3 
#  4   property :id,    Serial
#  5   property :name , String, :required => true
#  6 
#  7   has n, :friendships, :child_key => [ :source_id ]
#  8   has n, :friends, self, :through => :friendships, :via => :target
#  9 end
# 10 
# 11 class Friendship
# 12   include DataMapper::Resource
# 13 
# 14   belongs_to :source, 'Person', :key => true
# 15   belongs_to :target, 'Person', :key => true
# 16 end