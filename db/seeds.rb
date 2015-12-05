# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Device.create(mac_address: '34:bb:26:a1:eb:41',type: 'client' hotspot_to_connect:  'HTC Desire')
Device.create(mac_address: '80:01:84:2c:0f:20',type: 'hotspot' hotspot_to_connect:  '')
Device.create(mac_address: 'cc:c3:ea:6c:5e:a3',type: 'hotspot' hotspot_to_connect:  '')
Device.create(mac_address: '0c:1d:af:76:f8:cc',type: 'client' hotspot_to_connect:  'MiPhone')
Device.create(mac_address: '98:ff:d0:37:da:af',type: 'client' hotspot_to_connect:  'HTC Desire')
Device.create(mac_address: '74:51:ba:c7:c8:47',type: 'hotspot' hotspot_to_connect:  '')


