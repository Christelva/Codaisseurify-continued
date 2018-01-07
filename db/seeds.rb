#Song.destroy_all
Artist.destroy_all
User.destroy_all
Photo.destroy_all
Song.destroy_all

christel = User.create!(email: "christel@codaisseurify.com", password: "123456")

dvsn = Artist.create!(
  name: "dvsn",
   bio:  "Dvsn is an alternative R&B act
  that consists of producer Paul Jefferies (aka Nineteen85) and vocalist Daniel
  Daley. Similar in approach to early Weeknd, PartyNextDoor, and Majid Jordan,
  they specialize in narcotic slow jams featuring sexually frank lyrics,often in
  falsetto.Like some of the other Toronto-based artists in Drake's orbit, dvsn
  weren't all that forthcoming about their identities, but the names of Jefferies
   and Daley were the common factors in the songwriting credits of each dvsn song
    throughout the debut album, Sept 5th."
  )

kehlani = Artist.create!(
  name: "Kehlani",
  bio:"Initially famous for her performance
  on America's Got Talent with the band Poplyfe,
 this California singer and songwriter went on to
record singles such as Lonely in December, 1st Position, and Raw & True."
)
mila_j = Artist.create!(
  name: "Mila J", bio: "Born Jamila Akiko Chilombo, she
  is a R&B singer-songwriter, dancer, and rapper who has released music under
   the stage names Mila J
  and Japollonia. She has several EPs including M.I.L.A. and Dopamine."
)

tinashe = Artist.create!(
  name: "Tinashe",
bio: "Tinashe Jorgensen Kachingwe was born on the 6th of February, 1993, in
 Lexington, which is located in Kentucky. She was raised in a family
 which is rather unusual in their origin. The mother has a mixed ethnicity of
 Danish and English people. The father is a person who comes from the people of
 Shona. Being a schoolgirl, she faced aggression and bullying from her mates.
  But despite this fact she grew up independent as she spent a lot of time to
  practice dancing. She rather early got into the modelling career and rather
   soon was recognized as a singer."
 )

jhene_aiko = Artist.create!(
  name: "Jhene Aiko",
  bio: "Jhene Aiko is an American R&B singer and songwriter famous for her mix
  tape Sailing Soul(s), released through her website in 2011. She started her
   musical career in her early teens as a vocalist for the R&B group B2K. She
   was introduced as a cousin of B2K rapper Lil' Fizz, which was a false
    promotional tactic to attract the audience. Her musical hits include Sail
    Out, The Worst, Uh Huh and  Why I Love You. In 2002, she debuted as a play
    back singer through B2K for the soundtrack of the film The Master of Disguise
     by contributing vocals to the song Cherry Pie. "
   )

song_1 = Song.create!(
  title: "Morning after", artist: dvsn
)

song_2 = Song.create!(
  title: "Hallucinations", artist: dvsn
)

song_3 = Song.create!(
  title: "Dont choose", artist: dvsn
)

song_4 = Song.create!(
  title: "claim", album:"Morning after", year: 2017, artist: dvsn
)

song_5 = Song.create!(
  title: "You should be here", artist: kehlani
)

song_6 = Song.create!(
  title: "My main",  artist: mila_j
)

song_7 = Song.create!(
  title: "Kicking back", artist: mila_j
)

song_8 = Song.create!(
  title: "pretend", artist: tinashe
)

song_9 = Song.create!(
  title: "All hands on deck", artist: tinashe
)

song_10 = Song.create!(
  title: "2 On",  artist: tinashe
)

song_11 = Song.create!(
  title: "Remember", artist: jhene_aiko
)

song_12 = Song.create!(
  title: "Pretty bird",  artist: jhene_aiko
)

song_13 = Song.create!(
  title: "The worst",  artist: jhene_aiko
)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/cva1994/image/upload/v1514382104/photo-credit-lesean-harris-extralarge_1499973687544_202_cbj2ul.jpg", artist: dvsn)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/cva1994/image/upload/v1514382849/Kehlani_thumx1.jpg", artist: kehlani)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/cva1994/image/upload/v1514383066/Screen-Shot-2017-02-08-at-8.11.02-PM-300x300_sjr2op.png", artist: mila_j)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/cva1994/image/upload/v1514382960/Tinashe_hprh06.jpg", artist: tinashe)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/cva1994/image/upload/v1514383041/0fa25ecb_avbaeq.jpg", artist: jhene_aiko)
