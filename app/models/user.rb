class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :cas_authenticatable, :trackable



  def cas_extra_attributes=(extra_attributes)
    extra_attributes.each do |name, value|
      case name.to_sym
      when :is_admin
        puts "YESSSSS"
      when :lastname
        puts "YESSSSS"
      when :firstname
        puts "YESSSSS"
      end
    end
  end

  def account_id
     ActiveSupport::JSON.decode

  end

end
