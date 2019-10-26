name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
The above code outputs:

BOB
BOB

In line 1, a new string object 'Bob' is created. Let's assume it's object_id is
1, so we can refer to it as ID1 from now on. Additionally, ID1 is assigned to
the name variable.

In line 2, ID1 is also assigned to the save_name variable. Now, both name and
save_name variables point to ID1.

In line 3, the upcase! method is being called by ID1 since name points to ID1.
The upcase! method mutates the caller, so the value of the string object ID1 is
changed from 'Bob' to 'BOB'. Since there have been no reassignments, name
and save_name both still point to ID1.

In line 4, name and save_name are printed. They both point to ID1, so ID1 is
printed twice, its value being 'BOB'.
=end
