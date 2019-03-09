puts "creating dragonborn"

r = Race.create(
  charisma: 1,
  name: 'dragonborn',
  race_name_description: 'Dragonborn have personal names given at birth, but they put their clan names first as a mark of honor. A childhood name or nickname is often used among clutchmates as a descriptive term or a term of endearment. The name might recall an event or center on a habit.',
  short_description: 'Dragonborn look very much like dragons standing erect in humanoid form, though they lack wings or a tail.',
  source_book: "Player's Handbook",
  strength: 2
)

puts "creating dragonborn names"
# childhood names
RaceName.create(group: 'childhood', name: 'Climber', race_id: r.id)
RaceName.create(group: 'childhood', name: 'Earbender', race_id: r.id)
RaceName.create(group: 'childhood', name: 'Leaper', race_id: r.id)
RaceName.create(group: 'childhood', name: 'Pious', race_id: r.id)
RaceName.create(group: 'childhood', name: 'Shieldbiter', race_id: r.id)
RaceName.create(group: 'childhood', name: 'Zealous', race_id: r.id)

# clan names
RaceName.create(group: 'clan', name: 'Clethtinthiallor', race_id: r.id)
RaceName.create(group: 'clan', name: 'Daardendrian', race_id: r.id)
RaceName.create(group: 'clan', name: 'Delmirev', race_id: r.id)
RaceName.create(group: 'clan', name: 'Drachedandiion', race_id: r.id)
RaceName.create(group: 'clan', name: 'Fenkenkabradon', race_id: r.id)
RaceName.create(group: 'clan', name: 'Kepeshkmolik', race_id: r.id)
RaceName.create(group: 'clan', name: 'Kerrhylon', race_id: r.id)
RaceName.create(group: 'clan', name: 'Kimbatuul', race_id: r.id)
RaceName.create(group: 'clan', name: 'Linxakasendalor', race_id: r.id)
RaceName.create(group: 'clan', name: 'Myastan', race_id: r.id)
RaceName.create(group: 'clan', name: 'Nemmonis', race_id: r.id)
RaceName.create(group: 'clan', name: 'Norixius', race_id: r.id)
RaceName.create(group: 'clan', name: 'Ophinshtalajiir', race_id: r.id)
RaceName.create(group: 'clan', name: 'Prexijandilin', race_id: r.id)
RaceName.create(group: 'clan', name: 'Shestendeliath', race_id: r.id)
RaceName.create(group: 'clan', name: 'Turnuroth', race_id: r.id)
RaceName.create(group: 'clan', name: 'Verthisathurgiesh', race_id: r.id)
RaceName.create(group: 'clan', name: 'Yarjerit', race_id: r.id)

# female names
RaceName.create(group: 'female', name: 'Akra', race_id: r.id)
RaceName.create(group: 'female', name: 'Biri', race_id: r.id)
RaceName.create(group: 'female', name: 'Daar', race_id: r.id)
RaceName.create(group: 'female', name: 'Farideh', race_id: r.id)
RaceName.create(group: 'female', name: 'Harann', race_id: r.id)
RaceName.create(group: 'female', name: 'Halivar', race_id: r.id)
RaceName.create(group: 'female', name: 'Jheri', race_id: r.id)
RaceName.create(group: 'female', name: 'Kava', race_id: r.id)
RaceName.create(group: 'female', name: 'Korinn', race_id: r.id)
RaceName.create(group: 'female', name: 'Mishann', race_id: r.id)
RaceName.create(group: 'female', name: 'Nala', race_id: r.id)
RaceName.create(group: 'female', name: 'Perra', race_id: r.id)
RaceName.create(group: 'female', name: 'Raiann', race_id: r.id)
RaceName.create(group: 'female', name: 'Sora', race_id: r.id)
RaceName.create(group: 'female', name: 'Surina', race_id: r.id)
RaceName.create(group: 'female', name: 'Thava', race_id: r.id)
RaceName.create(group: 'female', name: 'Uadjit', race_id: r.id)

# male names
RaceName.create(group: 'male', name: 'Arjhan', race_id: r.id)
RaceName.create(group: 'male', name: 'Balasar', race_id: r.id)
RaceName.create(group: 'male', name: 'Bharash', race_id: r.id)
RaceName.create(group: 'male', name: 'Donaar', race_id: r.id)
RaceName.create(group: 'male', name: 'Ghesh', race_id: r.id)
RaceName.create(group: 'male', name: 'Heskan', race_id: r.id)
RaceName.create(group: 'male', name: 'Kriv', race_id: r.id)
RaceName.create(group: 'male', name: 'Medrash', race_id: r.id)
RaceName.create(group: 'male', name: 'Mehen', race_id: r.id)
RaceName.create(group: 'male', name: 'Nadarr', race_id: r.id)
RaceName.create(group: 'male', name: 'Pandjed', race_id: r.id)
RaceName.create(group: 'male', name: 'Patrin', race_id: r.id)
RaceName.create(group: 'male', name: 'Rhogar', race_id: r.id)
RaceName.create(group: 'male', name: 'Shamash', race_id: r.id)
RaceName.create(group: 'male', name: 'Shedinn', race_id: r.id)
RaceName.create(group: 'male', name: 'Tarhun', race_id: r.id)
RaceName.create(group: 'male', name: 'Torinn', race_id: r.id)

puts "creating dragonborn traits"

RaceTrait.create(
  race_id: r.id,
  trait_description: 'Your Strength score increases by 2, and your Charisma score increases by 1.',
  trait_header: 'ability score increases'
)

RaceTrait.create(
  race_id: r.id,
  trait_description: 'Young dragonborn grow quickly. They walk hours after hatching, attain the size and development of a 10-year-old human child by the age of 3, and reach adulthood by 15. They live to be around 80.',
  trait_header: 'age'
)

RaceTrait.create(
  race_id: r.id,
  trait_description: 'Dragonborn tend to extremes, making a conscious choice for one side or the other in the cosmic war between good and evil (represented by Bahamut and Tiamat, respectively). Most dragonborn are good, but those who side with Tiamat can be terrible villains.',
  trait_header: 'alignment'
)

RaceTrait.create(
  race_id: r.id,
  trait_description: 'Dragonborn are taller and heavier than humans, standing well over 6 feet tall and averaging almost 250 pounds. Your size is Medium.',
  trait_header: 'size'
)

RaceTrait.create(
  race_id: r.id,
  trait_description: 'Your base walking speed is 30 feet.',
  trait_header: 'speed'
)

# skip this one for now -- needs a table to display data
# RaceTrait.create(
#   race_id: r.id,
#   trait_description: 'You have draconic ancestry. Choose one type of dragon from the Draconic Ancestry table. Your breath weapon and damage resistance are determined by the dragon type, as shown in the table.',
#   trait_header: 'draconic ancestry'
# )

RaceTrait.create(
  race_id: r.id,
  trait_description: 'You can use your action to exhale destructive energy. Your draconic ancestry determines the size, shape, and damage type of the exhalation. When you use your breath weapon, each creature in the area of the exhalation must make a saving throw, the type of which is determined by your draconic ancestry. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level, 4d6 at 11th level, and 5d6 at 16th level. After you use your breath weapon, you can’t use it again until you complete a short or long rest.',
  trait_header: 'breath weapon'
)

RaceTrait.create(
  race_id: r.id,
  trait_description: 'You have resistance to the damage type associated with your draconic ancestry.',
  trait_header: 'damage resistance'
)

RaceTrait.create(
  race_id: r.id,
  trait_description: 'You can speak, read, and write Common and Draconic. Draconic is thought to be one of the oldest languages and is often used in the study of magic. The language sounds harsh to most other creatures and includes numerous hard consonants and sibilants.',
  trait_header: 'languages'
)