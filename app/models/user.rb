require "base64"

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :cas_authenticatable, :trackable

  @ool_user = nil

  def organisation_id
    ool_user.organisation_id
  end

  private
    def ool_user
      @ool_user ||= OolUser.find(Base64.encode64(username))
    end

end
