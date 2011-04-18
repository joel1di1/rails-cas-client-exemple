class OolUser < ActiveResource::Base
  self.site = "http://localhost:3000/"
  self.element_name = "user"
  self.format = :json

end
