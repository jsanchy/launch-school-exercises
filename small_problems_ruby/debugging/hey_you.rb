=begin

String#upcase! is a destructive method, so why does this code print HEY you
instead of HEY YOU? Modify the code so that it produces the expected output.

The code calls `chars`, which creates an array of the characters of `name`,
those characters being copies of the ones in the `name` string. So, when each
character calls `upcase!`, it is the characters in the array, not the string
`name`, that are being mutated. `name` remains unchanged.

String#upcase! can just be called on the string itself. Additionally, if the
intention is not to modify the argument passed in to the method, then
String#upcase can be used in the line calling `puts`.

So either

  name.upcase!

  puts 'HEY' + name

or

  puts 'HEY' + name.upcase

=end

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
