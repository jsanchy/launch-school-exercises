array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
The above code outputs:

Moe
Larry
CURLY
SHEMP
Harpo
Chico
Groucho
Zeppo

In line 1, a new array is created and assigned to array1.

In line 2, another empty array is created and assigned to array2.

In line 3, array2 is filled with the same elements as array1, meaning that
array1 and array2 are different array objects, but array1[i] and array2[i]
point to the same object for each index i.

In line 4, the upcase! method is called on array1[2], array1[3] and array1[5],
which are the string 'Curly', 'Shemp' and 'Chico'. Since upcase! mutates the
caller, those string objects' values are changed to 'CURLY', 'SHEMP' and
'CHICO', respectively. These changes are also reflected in array2, since
array2[2] points to the same object as array1[2] and likewise for indices 3
and 5.

In line 5, each element of array2 is printed on a separate line, showing that
three of its values called the upcase! method.
=end
