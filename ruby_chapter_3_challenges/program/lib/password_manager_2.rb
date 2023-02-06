# == INSTRUCTIONS ==
#
# Purpose: Manage a user's (valid) passwords
#
# Methods:
#   1. Name: add
#      Purpose: add a password for a service IF it is valid, unique and the
#               service has nothing already stored, otherwise return an error
#      Arguments: one string representing a service name,
#                 one string representing a password
#      Returns: "ERROR: Passwords must be unique" if the password is not unique,
#               "ERROR: Service names must be unique" if the service is not unique,
#               otherwise returns nothing
#   2. Name: remove
#      Purpose: deletes the given service name and its password
#      Arguments: one string representing a service name
#   3. Name: services
#      Arguments: none
#      Returns: an array of all the services for which the user has a password
#   4. Name: sort_by
#      Arguments: one string, either 'service' or 'added_on'
#      Returns: an array of all the services for which the user has a password
#               in the order specified
#   5. Name: password_for
#      Arguments: one string representing a service name
#      Returns: the password for the given service
#   6. Name: update
#      Purpose: updates the given service name with the new password, unless
#               the password is already in use elsewhere
#      Arguments: one string representing a service name,
#                 one string representing a password
#
# A reminder of the validity rules:
#   1. A password must be at least 8 characters long
#   2. A password must contain at least one of each of the following:
#       - It must be longer than 7 characters (8 is fine)
#       - It must contain at least one of the following special characters:
#         `!`, `@`, `$`, `%` or `&`
#
# Example usage:
#   > password_manager = PasswordManager2.new
#   > password_manager.add('gmail', '12ab5!678')   # Valid password
#   > password_manager.add('facebook', '$abc1234') # Valid password
#   > password_manager.add('youtube', '3@245256')  # Valid password
#   > password_manager.add('twitter', '12345678')  # Invalid password, so ignored
#   > password_manager.password_for('facebook')
#   '$abc1234'
#   > password_manager.services
#   ['gmail', 'facebook', 'youtube']
#   > password_manager.remove('facebook')
#   > password_manager.services
#   ['gmail', 'youtube']
#   > password_manager.add('twitter', '12ab5!678')  # Not unique, so return error
#   "ERROR: Passwords must be unique"
#   > password_manager.update('gmail', '12345678')  # Invalid password, so ignored
#   > password_manager.password_for('gmail')
#   '12ab5!678'
#   > password_manager.update('gmail', '%21321415')  # Valid password
#   > password_manager.password_for('gmail')
#   '%21321415'
#   > password_manager.sort_by('service')
#   ['gmail', 'youtube']
#   > password_manager.sort_by('added_on')
#   ['youtube', 'gmail']
#
# There are many more examples possible but the above should give you a good
# idea.

# == YOUR CODE ==

class PasswordManager2
end
