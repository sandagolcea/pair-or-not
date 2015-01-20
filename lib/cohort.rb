class Cohort

  include DataMapper::Resource
  
  has n, :users

  property :id, Serial
  property :name, String
end
