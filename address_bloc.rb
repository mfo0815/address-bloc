puts "Welcome to AddressBloc!"

require_relative '../address-bloc/controllers/menu_controller'

# #4
menu = MenuController.new
# #5
system "clear"
puts "Welcome to AddressBloc!"
# #6
menu.main_menu
