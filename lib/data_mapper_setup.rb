require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/pair_or_not_#{env}")

# require './lib/maker'

# After declaring your models, you should finalise them
DataMapper.finalize
