# == INSTRUCTIONS ==
#
# Purpose: Manage a user's (valid) passwords
#
# Methods:
#   1. Name: add
#      Purpose: add a password for a service IF it is valid, otherwise do nothing
#      Arguments: one string representing a service name,
#                 one string representing a password
#   2. Name: password_for
#      Arguments: one string representing a service name
#      Returns: the password for the given service
#   3. Name: services
#      Arguments: none
#      Returns: an array of all the services for which the user has a password
#
# A reminder of the validity rules:
#   1. A password must be at least 8 characters long
#   2. A password must contain at least one of each of the following:
#       - It must be longer than 7 characters (8 is fine)
#       - It must contain at least one of the following special characters:
#         `!`, `@`, `$`, `%` or `&`
#
# We recommend that you store the passwords in a hash, where the keys are
# the service names and the values are the passwords.
#
# Example usage:
#   > password_manager = PasswordManager.new
#   > password_manager.add('gmail', '12ab5!678')   # Valid password
#   > password_manager.add('facebook', '$abc1234') # Valid password
#   > password_manager.add('twitter', '12345678')  # Invalid password, so ignored
#   > password_manager.password_for('facebook')
#   '$abc1234'
#   > password_manager.password_for('not_real')
#   nil
#   > password_manager.password_for('twitter')
#   nil
#   > password_manager.services
#   ['gmail', 'facebook']

# == YOUR CODE ==

class PasswordManager
    def initialize
        @passwords = {}
    end
    def add(services, password)
        if password.length > 7 && password =~ /[@!$&%]/
            return @passwords[services] = password
        else
            "Password is invalid!"
        end
    end
    def password_for(service)
        if @passwords.key?(service)
            @passwords[service]
        else
            "There is no password correlated with this service."
        end
    end
    def services
        @passwords.keys
    end
end
