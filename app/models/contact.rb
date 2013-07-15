class Contact < ActiveRecord::Base
	attr_accessible :fullname,:email,:subject,:message,:phone,:country

  
end
