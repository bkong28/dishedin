class Chef < ActiveRecord::Base

# Is this a condition?
# Appears to be inherited from ActiveModel according to Gemfile.
  has_secure_password

# Create a class method to be called by index page.
# Interpolate first_name & last_name attributes from chefs model.
  def name
  	"#{first_name} #{last_name}"
  end
  
end
