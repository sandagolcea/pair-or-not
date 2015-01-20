class Like
  include DataMapper::Resource

  belongs_to :source, 'User', :key => true
  belongs_to :targer, 'User', :key => true
end
