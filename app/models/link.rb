require 'data_mapper'
require 'dm-postgres-adapter'

# This class corresponds to a table in the database
class Link

  include DataMapper::Resource

 property :id,     Serial
 property :title,  String
 property :url,    String

end

# Now let's set up a connection with a database
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
# Let's check that everything we wrote in our models was OK
DataMapper.finalize
# And let's build any new columns or tables we added
DataMapper.auto_upgrade!
