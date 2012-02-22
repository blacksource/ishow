class User < ActiveRecord::Base

	def authenticate
		user = User.find_by_email(email)
		if user
			if user.password == User.encrypted_password(password, "")
				return user
			end
		end
		return nil
	end

	private 
	def self.encrypted_password(password,salt) 
	    # string_to_hash = password + "song" + salt 
	    # Digest::SHA1.hexdigest(string_to_hash)
	    return password
	end
end
