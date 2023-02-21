# == INSTRUCTIONS ==
#
# Purpose: Validate a password
# Parameters: one, a string
# Rules:
#   - It must be longer than 7 characters (8 is fine)
#   - It must contain at least one of the following special characters: `!`, `@`,
#     `$`, `%` or `&`
# Returns: a boolean (true if valid, false otherwise)
# Example:
#   Call:    valid?("1234567")
#   Returns: false
#   Call:    valid?("12345678")
#   Returns: false
#   Call:    valid?("12345!78")
#   Returns: true

# == YOUR CODE ==

def valid?(password)
    if password.length > 7 && password.include?("&")
        return true
    elsif password.length > 7 && password.include?("@")
        return true
    elsif password.length > 7 && password.include?("!")
        return true
    elsif password.length > 7 && password.include?("$")
        return true
    elsif password.length > 7 && password.include?("%")
        return true
    else
        return false
    end
end
