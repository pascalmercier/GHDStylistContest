namespace :db do
  desc "erase and fill datebase"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [Stylist, Creation, Vote].each(&:delete_all)
    Stylist.populate 3 do |stylist|
      stylist.picture_url = 'http://s1.hubimg.com/u/758660_50.jpg'
      stylist.name = Faker::Name.name
      stylist.salon = Populator.words(1..5).titleize
      Creation.populate 1..3 do |creation|
        creation.stylist_id = stylist.id
        creation.picture_url = ['http://photos-a.ak.fbcdn.net/hphotos-ak-snc6/208492_105814496171131_100002277443226_55563_4710744_s.jpg',
                                'http://photos-e.ak.fbcdn.net/hphotos-ak-ash4/217523_105814319504482_100002277443226_55561_428145_s.jpg', 
                                'http://photos-c.ak.fbcdn.net/hphotos-ak-snc6/208266_105814216171159_100002277443226_55560_6034923_s.jpg']
        creation.created_at = 1.years.from_now..Time.now
        Vote.populate 60..130 do |vote|
          vote.creation_id = creation.id
          vote.points = rand 10
        end
      end
    end
  end
end