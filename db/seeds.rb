# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bcp = Bank.create(name: 'Banco de Credito del Peru') 
bbva = Bank.create(name: 'BBVA Continental')
['Av. Jorge Basadre 410 - San Isisdro - Lima', 'Av. Pacifico 180 - Nuevo Chimbote - Ancash', 'Av. 2 de Mayo 650 - San Isidro - Lima'].each do |bs|
	bcp.bank_subsidiaries.create(address: bs)
end
['Av. Jorge Basadre 510 - San Isisdro - Lima', 'Av. 2 de Mayo 1034 - San Isisdro - Lima'].each do |bs|
	bbva.bank_subsidiaries.create(address: bs)
end