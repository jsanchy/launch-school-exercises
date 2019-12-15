=begin

The following code prompts the user to set their own password if they haven't
done so already, and then prompts them to login with that password. However, the
program throws an error. What is the problem and how can you fix it?

Once you get the program to run without error, does it behave as expected?
Verify that you are able to log in with your new password.

The problem is that set_password does not have access to the password variable
in the outer scope. Instead, password must be assigned to the return value of
set_password. So,

  if !password
    set_password
  end

should be changed to

  if !password
    password = set_password
  end


This also means the lines

  new_password = gets.chomp
  password = new_password

are mostly unnecessary. First, new_password is unnecessary because password (in
the set_password method) is immediately assigned to new_password. Therefore, the
new_password variable is not needed, so the lines can be changed to

  password = gets.chomp

But since that line is only creating a local variable named password inside the
set_password method's scope and not referring to the password variable in the
outer scope, the assignment is unnecessary, too. Instead, the return value of
gets.chomp can just be implicitly returned since it is the last line in the
method. Thus, the line can further be changed to

  gets.chomp

Finally, for the method verify_password to be able to compare the user's input
with the password they set, it should take an parameter that represents the
password that was set. Then, when calling verify_password, call it with the
password variable in the outer scope as its argument.

=end

password = nil

def set_password
  puts 'What would you like your password to be?'
  gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)
