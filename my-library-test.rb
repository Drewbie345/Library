require_relative "my-library.rb"

mks_lib = Library.new("MakerSquare Library")
puts mks_lib.name

cat_in_the_hat = Book.new("The Cat in the Hat", "Dr. Seuss")
one_fish_two_fish = Book.new("One Fish, Two Fish", "Dr. Seuss")
oh_the_places = Book.new("Oh the Place Youll Go", "Dr. Seuss")
green_eggs = Book.new("Green Eggs and Ham", "Dr. Seuss")
grinch = Book.new("How the Grinch Stole Christmas", "Dr. Seuss")
# puts cat_in_the_hat.name
# puts cat_in_the_hat.get_status
# puts cat_in_the_hat.change_status
# puts cat_in_the_hat.get_status
# puts cat_in_the_hat.change_status

drew = Borrower.new("Drew")
mickey = Borrower.new("Mickey")

mks_lib.add_book(cat_in_the_hat)
mks_lib.add_book(one_fish_two_fish)
mks_lib.add_book(oh_the_places)
mks_lib.add_book(grinch)
mks_lib.add_book(green_eggs)
puts "Added all 5 books"

# Scenario 1
# mks_lib.check_out(cat_in_the_hat, drew)
# mks_lib.check_out(oh_the_places, drew)
# mks_lib.check_out(grinch, drew)
# mks_lib.check_out(one_fish_two_fish, drew)
# mks_lib.check_out(green_eggs, drew)
# puts "Checked out all 5 books to Drew"
# grinch.print_status
# cat_in_the_hat.print_status
# one_fish_two_fish.print_status
# oh_the_places.print_status
# green_eggs.print_status
# puts "Checking hashes"
# mks_lib.available_books
# mks_lib.borrowed_books

# Scenario 2
# mks_lib.check_out(cat_in_the_hat, drew)
# mks_lib.check_out(oh_the_places, mickey)
# puts "Checked out Cat and Places"
# mks_lib.is_available?(grinch)
# mks_lib.is_available?(cat_in_the_hat)
# mks_lib.is_available?(green_eggs)
# mks_lib.is_available?(oh_the_places)
# mks_lib.is_available?(one_fish_two_fish)
# puts "Checking hashes"
# mks_lib.check_book_status
# mks_lib.available_books
# mks_lib.borrowed_books

# Scenario 3
# mks_lib.check_out(cat_in_the_hat, drew)
# mks_lib.check_out(oh_the_places, drew)
# mks_lib.check_out(grinch, mickey)
# mks_lib.is_available?(grinch)
# mks_lib.is_available?(cat_in_the_hat)
# mks_lib.is_available?(green_eggs)
# mks_lib.is_available?(oh_the_places)
# mks_lib.is_available?(one_fish_two_fish)
# puts "Checking hashes"
# mks_lib.check_book_status
# mks_lib.available_books
# mks_lib.borrowed_books
# mks_lib.who_has_what
# puts "Testing Checking in"
# mks_lib.check_in(grinch, mickey)
# mks_lib.check_in(oh_the_places, drew)
# mks_lib.is_available?(grinch)
# mks_lib.is_available?(cat_in_the_hat)
# mks_lib.is_available?(green_eggs)
# mks_lib.is_available?(oh_the_places)
# mks_lib.is_available?(one_fish_two_fish)
# puts "Checking hashes"
# mks_lib.check_book_status
# mks_lib.available_books
# mks_lib.borrowed_books
# mks_lib.who_has_what
# puts "Checking Borrower Class"
# drew.print_my_books

# Scenario 4
mks_lib.check_out(cat_in_the_hat, drew)
mks_lib.check_out(oh_the_places, drew)
mks_lib.check_out(green_eggs, drew)
mks_lib.check_out(one_fish_two_fish, mickey)
mks_lib.check_out(cat_in_the_hat, mickey)
mks_lib.check_in(cat_in_the_hat, drew)
mks_lib.check_out(cat_in_the_hat, mickey)