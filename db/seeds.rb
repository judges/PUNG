# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
require 'open-uri'
require 'active_record/fixtures'


#Newspapperdetails.delete_all
#open("db/pappers.txt") do |newspappers|
#  newspappers.read.each_line do |papper|
#    newsspapperid, printday, format, blocks, newsppaperpages, pagetags, pagetyppe = papper.chomp.split("|")
#      Newspapperdetails.create!(
#	#:newsspapperid => newsspapperid,
#	:printday => printday,
#	:format => format,
#	:blocks => blocks,
#	:newsppaperpages => newsppaperpages,
#	:pagetags => pagetags,
#	:pagetyppe => pagetyppe)
#  end
#end


Region.create(:id =>1, :name=>"Автономна Республіка Крим")
Region.create(:id =>2, :name=>"Вінницька| центр — Вінниця")
Region.create(:id =>3, :name=>"Волинська| центр — Луцьк")
Region.create(:id =>4, :name=>"Дніпропетровська| центр — Дніпропетровськ")
Region.create(:id =>5, :name=>"Донецька| центр — Донецьк")
Region.create(:id =>6, :name=>"Житомирська| центр — Житомир")
Region.create(:id =>7, :name=>"Закарпатська| центр — Ужгород")
Region.create(:id =>8, :name=>"Запорізька| центр — Запоріжжя")
Region.create(:id =>9, :name=>"Івано-Франківська| центр — Івано-Франківськ")
Region.create(:id =>10, :name=>"Київська| центр — Київ")
Region.create(:id =>11, :name=>"Кіровоградська| центр — Кіровоград")
Region.create(:id =>12, :name=>"Луганська| центр — Луганськ")
Region.create(:id =>13, :name=>"Львівська| центр — Львів")
Region.create(:id =>14, :name=>"Миколаївська| центр — Миколаїв")
Region.create(:id =>15, :name=>"Одеська| центр — Одеса")
Region.create(:id =>16, :name=>"Полтавська| центр — Полтава")
Region.create(:id =>17, :name=>"Рівненська| центр — Рівне")
Region.create(:id =>18, :name=>"Сумська| центр — Суми")
Region.create(:id =>19, :name=>"Тернопільська| центр — Тернопіль")
Region.create(:id =>20, :name=>"Харківська| центр — Харків")
Region.create(:id =>21, :name=>"Херсонська| центр — Херсон")
Region.create(:id =>22, :name=>"Хмельницька| центр — Хмельницький")
Region.create(:id =>23, :name=>"Черкаська| центр — Черкаси")
Region.create(:id =>24, :name=>"Чернівецька| центр — Чернівці")
Region.create(:id =>25, :name=>"Чернігівська| центр — Чернігів")


#Addss.create( :id =>1, :size => "1(256х373)", :price => " ", :printpyte => " ", :comments	=>" ")
#Addss.create( :id =>2, :size => "2/3 (256х248)", :price => " ", :printpyte => " ", :comments	=>" "	)
#Addss.create( :id =>3, :size => "1/2(256х184)", :price => " ", :printpyte => " ", :comments	=>" "	)
#Addss.create( :id =>4, :size => "1/2 (126х373)", :price => " ", :printpyte => " ", :comments	=>" ")
#Addss.create( :id =>5, :size => "1/3 (256х122)", :price => " ", :printpyte => " ", :comments	=>" "	)
#Addss.create( :id =>6, :size => "1/3 (126х248)", :price => " ", :printpyte => " ", :comments	=>" "	)
#Addss.create( :id =>7, :size => "1/4 (256х92)", :price => " ", :printpyte => " ", :comments	=>" "	)
#Addss.create( :id =>8, :size => "1/4 (126х186)", :price => " ", :printpyte => " ", :comments	=>" ")
#Addss.create( :id =>9, :size => "1/5 (126х149)", :price => " ", :printpyte => " ", :comments	=>" "	)
#Addss.create( :id =>10, :size => "1/8 (126х93)", :price => " ", :printpyte => " ", :comments	=>" "	)# db/seed.rb


#Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "newspapper_details")
