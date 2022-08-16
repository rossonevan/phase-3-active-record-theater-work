puts "Seeding..."

Role.destroy_all
Audition.destroy_all


r1 = Role.create(character_name: 'Bugs')
r2 = Role.create(character_name: 'Jerry')
r3 = Role.create(character_name: 'Tom')

a1 = Audition.create(actor: 'Sean', location: 'New York', phone: '123123123', hired: true, role_id: r1.id)
a2 = Audition.create(actor: 'Alex', location: 'Maine', phone: '12567546', hired: true, role_id: r1.id)
a3 = Audition.create(actor: 'Evan', location: 'New York', phone: '164588765', hired: false, role_id: r2.id)
a4 = Audition.create(actor: 'Alex', location: 'Arizona', phone: '164565474', hired: false, role_id: r2.id)
a5 = Audition.create(actor: 'Gehrig', location: 'New York', phone: '165465465', hired: true, role_id: r3.id)
a6 = Audition.create(actor: 'Adam', location: 'Texas', phone: '3454354325', hired: false, role_id: r3.id)

puts "Done seeding!"