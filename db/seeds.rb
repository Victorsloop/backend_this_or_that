# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
## This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting seeds"
Friendship.destroy_all
User.destroy_all
Post.destroy_all
Wall.destroy_all
Feedback.destroy_all

puts "seeding Users"

jake = User.create!(username: "jake", password:"777", first_name:"jake", last_name: "statefarm",avatar: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2020%2F11%2Fdisney-marvel-deadpool-3-molyneux-sisters-writers-001.jpg?quality=95&w=1170&cbr=1&q=90&fit=max", vaccinated:false,age:27, hometown:"Manhattan")
victor = User.create!(username: "victor", password:"12", first_name:"Victor", last_name: "Torres",avatar: "https://www.autotraffictickets.com/wp-content/uploads/2020/07/How-to-Respond-When-Asked-Why-Youre-Speeding.jpg", vaccinated:false,age:22, hometown:"New York")
flo = User.create!(username: "flo", password:"000", first_name:"Flo", last_name: "progressive",avatar: "https://pbs.twimg.com/profile_images/1135564393876545536/3ZVo3zgK.png", vaccinated:false,age:29, hometown:"Flushing")
steven = User.create!(username: "steven", password:"123", first_name:"Steven", last_name: "Wu",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg", vaccinated:false,age:29, hometown:"Flushing")
obama = User.create!(username: "pots", password:"41", first_name:"Barrack", last_name: "Obama",avatar: "https://i.dailymail.co.uk/i/pix/2013/04/30/article-2317159-198E3BFC000005DC-222_634x706.jpg", vaccinated:false,age:30, hometown:"USA")
drake = User.create!(username: "ovo", password:"31", first_name:" Champagne", last_name: "papi",avatar: "https://dazedimg-dazedgroup.netdna-ssl.com/463/azure/dazed-prod/1300/0/1300889.jpeg", vaccinated:false,age:27, hometown:"Canada")
nark = User.create!(username: "nark", password:"00", first_name:"Victor", last_name: "zuckelburg",avatar: "https://i2-prod.mirror.co.uk/incoming/article12343355.ece/ALTERNATES/s1200c/Untitled-design-10.jpg", vaccinated:false,age:39, hometown:"Mars")
tommy = User.create!(username: "goat", password:"444", first_name:"Tom", last_name: "Brady",avatar: "https://i.cbc.ca/1.5905150.1612757728!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/chiefs-buccaneers-super-bowl-football.jpg", vaccinated:false,age:29, hometown:"Flushing")



puts "seeding Wall"

stevenwall = Wall.create!(user: steven)
victorwall = Wall.create!(user: victor)
flowall = Wall.create!(user:flo)
jakewall = Wall.create!(user:jake)

puts "seeding Posts"

post2 = Post.create!(content:"Should i invest all my money in Gamestop or invest in bigger companies like apple??" ,img_url:"https://compote.slate.com/images/926e5009-c10a-48fe-b90e-fa0760f82fcd.png?width=1200&rect=680x453&offset=0x30",wall: victorwall)
post1 = Post.create!(content:"Should i keep wearing khaki pants or try jeans??", img_url:"https://www.landsend.com/article/jeans-versus-khakis/images/feat-m.jpg", wall: jakewall)
Vent1 = Post.create!( content:"I need help deciding on a name for my APP, i am stuck between Voura and This or that", img_url:"http://4.bp.blogspot.com/-LQ9xZOrXNE8/VoALGBUKY2I/AAAAAAAARRI/Jagihem1STI/s1600/NeedHelpNaming2.jpg",wall:victorwall)
Vent9 = Post.create!( content:"Cant decide between a honda accord or a mustang", img_url:"https://www.motortrend.com/uploads/sites/5/2015/08/2016-Honda-Accord-vs-2015-Ford-Mustang-Ecoboost-promo.jpg?fit=around%7C875:492",wall:flowall)
Vent10 = Post.create!( content:"Iphone or andriod", img_url:"https://cdn.pocket-lint.com/r/s/1200x/assets/images/145016-news-android-vs-iphone-which-is-best-for-you-image1-zc2bj8rvny.jpg",wall:flowall)
Vent3 = Post.create!( content:"Should i be a software engineer or a data analyst", img_url:"https://www.business.com/images/content/5ca/3e1aa5a215e8a458bb313/1500-0-",wall:victorwall)
Vent4 = Post.create!( content:"Apologize to a kid i accidently punched iceskating ?", img_url:"https://townsquare.media/site/44/files/2017/08/ThinkstockPhotos-621707146.jpg",wall:victorwall)
Vent5 = Post.create!( content:"My girlfriend said either her or anime", img_url:"https://wallpapercave.com/wp/wp3153743.png",wall:victorwall)
Vent2 = Post.create!( content:"I need Help choosing between these two dresses", img_url:"https://previews.123rf.com/images/vadymvdrobot/vadymvdrobot1706/vadymvdrobot170603325/81210620-picture-of-young-woman-standing-in-clothes-shop-indoors-choosing-between-two-dresses-looking-at-came.jpg",wall:victorwall)
Vent6 = Post.create!( content:"Should i introduce my boyfriend to my friends", img_url:"https://www.ladylux.com/images/articles/introduce.jpg",wall:victorwall)
Vent7 = Post.create!( content:"Should i go away for college", img_url:"https://www.usnews.com/dims4/USNEWS/d3d9bc4/17177859217/resize/800x540%3E/quality/85/?url=https%3A%2F%2Fmedia.beam.usnews.com%2Feb%2Fd133b17495cf5427a75f4a4814d33f%2Fcollege-photo_37110.jpg",wall:flowall)
Vent8 = Post.create!( content:"Got offered commercial job.. college or pursue career?", img_url:"https://static01.nyt.com/images/2020/08/02/arts/02truth-WEB/02truth-WEB-videoSixteenByNineJumbo1600.jpg",wall:flowall)
post3 = Post.create!(content:"Should i workout chest or arms to feel stronger??", img_url:"https://static.seattletimes.com/wp-content/uploads/2020/05/urn-publicid-ap-org-6dbd9ad370add2ba299c7da46c25004fVirus_Outbreak_Florida_39312-780x519.jpg", wall: jakewall)
post4 = Post.create!(content:"Vacation in mexico or DR??", img_url:"https://cdn.quizly.co/wp-content/uploads/2017/08/10024007/Where-Should-You-Go-On-Vacation-Next.jpg", wall: jakewall)
post5 = Post.create!(content:"Husky or golden retriever", img_url:"https://www.loveyourdog.com/wp-content/uploads/2020/06/Golden-Retriever-vs-Siberian-Husky-900x500.jpg", wall: jakewall)




puts "seeding Comments"

# feedback1 = Feedback.create!(feedbackHash)
feedback1 = Feedback.create!(user_id:User.fourth.id,post_id:Post.first.id, comment:"Game stop to the MOOON!!", pro:true, con:false )
feedback2 = Feedback.create!(user_id:User.fifth.id,post_id:Post.first.id, comment:"Everyone is buying gamestop dont give into the FOMO", pro:true, con:false )
feedback3 = Feedback.create!(user_id:User.third.id,post_id:Post.first.id, comment:"As an older gentelmen i definetly recomend the safer option apple", pro:false, con:true )
feedback4 = Feedback.create!(user_id:User.fourth.id,post_id:Post.first.id, comment:"APPLE WILL NEVER DIE, game stop will", pro:false, con:true )
feedback5 = Feedback.create!(user_id:User.third.id,post_id:Post.first.id, comment:"Heyyyyyyyyyy", pro:true, con:false )
feedback6 = Feedback.create!(user_id:User.third.id,post_id:Post.second.id, comment:"Khaki pants are more comfortable and age appropriate to wear", pro:true, con:false )
feedback7 = Feedback.create!(user_id:User.fourth.id,post_id:Post.second.id, comment:"Khakis give you more of a formal look and therfore youre trusted more ", pro:true, con:false )
feedback8 = Feedback.create!(user_id:User.third.id,post_id:Post.second.id, comment:"Khaki pants give you less of a tight fit", pro:true, con:false )
feedback9 = Feedback.create!(user_id:User.first.id,post_id:Post.third.id, comment:"HOWDY", pro:true, con:false )




# t.integer "user_id"
# t.integer "post_id"
# t.string "comment"
# t.boolean "pro"
# t.boolean "con""


puts "seeding friendships"

friendship1 = Friendship.create!(user: steven, friend: victor)
friendship2 = Friendship.create!(user: victor, friend: steven)
friendship3 = Friendship.create!(user: steven, friend: obama)
friendship4 = Friendship.create!(user: steven, friend: drake)
friendship5 = Friendship.create!(user: steven, friend: nark)
friendship6 = Friendship.create!(user: steven, friend: flo)
friendship7 = Friendship.create!(user: victor, friend: obama)
friendship8 = Friendship.create!(user: victor, friend: drake)
friendship9 = Friendship.create!(user: victor, friend: nark)
friendship10 = Friendship.create!(user: victor, friend: flo)






