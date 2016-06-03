# Excerpt taken from "Regular Expressions Cookbook", 2009, O'Reilly

# All characters permitted by RFC 2822 can be used in the username, though not all email software
# can handle all these characters

# No two dots can appear right next to each other. The first and last characters in the username
# and in the domain name must not be dots

# The domain name, the part after the @ sign, is restricted to characters allowed in domain names.
# Furthermore, it must include at least one dot, i.e., the domain must contain at least two levels,
# such as secondlevel.com or thirdlevel.secondlevel.com
# The top-level domain must consist of two to six letters

class Email

    @valida: (email) ->
        email = email.replace /^\s+|\s+$/g, ''

        pattern = ///
            ^                               # Beginning of string
            [\w!#$%&'*+/=?`{|}~^-]+         # Match a word character as well as any of the 18 listed punctuation characters
            (?:\.[\w!#$%&'*+/=?`{|}~^-]+)*  # Match a dot followed by at least one of the above
            @                               # Match @ sign
            (?:[A-Z0-9-]+\.)+               # Domain must contain at least two levels
            [A-Z]{2,6}                      # Top-level domain has two to six letters
            $                               # End of string
        ///i

        pattern.test email