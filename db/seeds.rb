# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# could be in your create method
# vid1 = Video.create(...)
# Categorization.create(video_id: vid1.id, category_id: cat1.id)
# Categorization.create(video_id: vid1.id, category_id: cat2.id)
# Categorization.create(video_id: vid1.id, category_id: cat3.id)

# initial seeds
cat1 = Cat.create(name: "Primer")
cat2 = Cat.create(name: "Tutorial")
cat3 = Cat.create(name: "Story Mode")
cat4 = Cat.create(name: "Multiplayer")
cat5 = Cat.create(name: "Beginner")
cat6 = Cat.create(name: "Intermediate")
cat7 = Cat.create(name: "Advanced")
cat8 = Cat.create(name: "Computational")

vid1 = Video.create(title: "High Precision Entity Alignment", 
description: "Align minecarts, boats, etc. to any coordinate with any precision you want! In the past finding a way to get a specific required alignment reliably was hard or impossible, but with this new method getting any alignment is possible.", 
upload_date: "9/1/2022", 
url: "Vmhlij-jmZ4", 
rating: 9, 
familiarity: "Advanced", 
video_type: "Primer, Tutorial")
vid2 = Video.create(title: "Easy Deepslate Mining using a Wither", 
description: "i punch a wither for 4 minutes", 
upload_date: "8/23/2022", 
url: "loN94sUn320", 
rating: 7, 
familiarity: "Intermediate", 
video_type: "Tutorial")
vid3 = Video.create(title: "Minecraft Elegance: Versatile Tree Farm (Universal, Nether, and Huge Mushroom; Java 1.16-1.19)", 
familiarity: "Intermediate", 
video_type: "Primer, Tutorial", 
upload_date: "10/10/22", 
url: "6xe4I4EqnFw", 
description: "A highly simplified and versatile ""universal"" tree farm for overworld trees, nether trees (huge fungi), and huge mushrooms, with competitive rates")
vid4 = Video.create(title: "Minecraft Elegance: Iron Farm on Day 1 of Survival, Java 1.16-1.19", 
familiarity: "Beginner, Intermediate", 
video_type: "Primer, Tutorial", 
upload_date: "12/23/20", 
url: "-oYyJ6jfSPU", 
description: "A simple, practical iron farm in survival that is optimized for early game constraints.  Does not work on Bedrock Edition.")																			
vid5 = Video.create(title: "Minecraft Elegance: Voidless Void Trading (Java 1.17-1.19)", 
familiarity: "Intermediate", 
video_type: "Primer, Tutorial", 
upload_date: "5/27/22", 
url: "FGFoCfRaljM", 
description: "A very simple void trading system that can be used in any dimension and is well suited to early game trading, wandering traders, single player games, and other special circumstances.  This build is not compatible with many modified servers, such as PAPER and SPIGOT.  
Discord: https://discord.gg/G9aa2YTTQX")
vid6 = Video.create(title: "The Minecraft Player's Dictionary ▫ Minecraft Survival Guide (Tutorial) ▫ Caves & Cliffs Update 1.18", 
familiarity: "Beginner", 
video_type:	"Primer, Story Mode", 
upload_date: "11/30/21", 
url: "u7lE0MG80qw", 
description: "The Minecraft Survival Guide is back for 1.18! This video is a guide to a bunch of terms and concepts the Minecraft community uses frequently, but might not make sense to new players - or returning players might need an easy explanation for.
We'll cover a lot more aspects of Minecraft in Season 2 of the Minecraft Survival Guide, but if you've heard any Minecraft jargon you aren't sure about, feel free to ask in the comments!
Season 2 of the Minecraft Survival Guide will teach you how to master Survival Mode in Minecraft 1.18 and beyond!")
vid7 = Video.create(title: "Controls, Keyboard Shortcuts & F3 ▫ Minecraft Survival Guide (Tutorial) ▫ Caves & Cliffs Update 1.18", 
familiarity: "Beginner", 
video_type: "Primer, Story Mode", 
upload_date: "12/1/21", url: "bkQqqxpqFo0", 
description: "The Minecraft Survival Guide is back for 1.18! This video is a reference guide to Minecraft's controls and keyboard shortcuts, including player movement, breaking and placing blocks, inventory management, and the F3 Debug information! 
If there are any other controls you aren't sure about, they'll probably come up during the main series itself - but if you have any questions, feel free to ask in the comments!
Season 2 of the Minecraft Survival Guide will teach you how to master Survival Mode in Minecraft 1.18 and beyond!
Follow the Season 2 playlist here: https://www.youtube.com/watch?v=u7lE0...")
vid8 = Video.create(title: "Surviving Your First Night! ▫ Minecraft Survival Guide (1.18 Tutorial Let's Play) [S2 Ep.1]", 
familiarity: "Beginner", 
video_type:	"Primer, Story Mode", 
upload_date: "12/6/21", 
url: "E19Jaijd7Dg", 
description: "The Minecraft Survival Guide Season 2 begins! This tutorial will show you how to survive your first night in Minecraft 1.18. We'll craft our first tools, gather some food, build a shelter, and explore this fresh new world!")
vid9 = Video.create(title: "How to Find Diamonds! ▫ Minecraft Survival Guide (1.18 Tutorial Let's Play) [S2 Ep.7]", 
familiarity: "Beginner", 
video_type: "Primer, Story Mode", 
upload_date: "12/14/21", 
url: "p-IUZA7rbSg", 
description: "The Minecraft Survival Guide Season 2 continues! This tutorial will show you how to find diamonds in Minecraft 1.18. We cross the nearby ocean to discover a lush cave, explore into deepslate caverns, fight a slime, and get our hands on more precious resources - including our first diamonds, lapis lazuli, redstone, and gold!")
vid10 = Video.create(title: "Introduction To Enchanting! ▫ Minecraft Survival Guide (1.18 Tutorial Let's Play) [S2 Ep.8]", 
familiarity: "Beginner, Intermediate", 
video_type: "Primer, Story Mode", 
upload_date:"12/15/21", 
url: "Ud_2OLNnLHA", 
description: "The Minecraft Survival Guide Season 2 continues! This tutorial will show you how to set up an Enchanting Table and prepare for Level 30 enchants. We explore the process of farming sugar cane and leather, the correct setup for bookshelves around an enchanting table, options for obtaining xp levels in the early game, and enchant our first diamond pickaxe!")
vid11 = Video.create(title: "Huge Copper Veins & Auto Smelting! ▫ Minecraft Survival Guide (1.18 Tutorial Let's Play) [S2 Ep.14]", 
familiarity: "Beginner, Intermediate", 
video_type: "Primer, Story Mode", 
upload_date: "12/23/21", 
url: "YSENLtCwhcg", 
description: "The Minecraft Survival Guide Season 2 continues! This tutorial will show you what to look for in a Taiga biome, how to identify and mine out a huge Copper Ore vein, and when to link up hoppers and furnaces for our first automatic smelter!")
vid12 = Video.create(title: "Simplest Wither Rose Wither Cage | Minecraft | Java 1.16+", 
familiarity: "Intermediate, Advanced", 
video_type: "Tutorial", 
upload_date: "8/1/22", 
url: "w_S9LR5KLGo", 
description: "Please credit me if you used my wither cage concept in your farm designs. Thank you :D")																			
vid13 = Video.create(title: "BEST 1.19+ AFK Fish Farm in Minecraft! TUTORIAL [java]", 
familiarity: "Intermediate", 
video_type: "Tutorial", 
upload_date: "7/1/22", 
url: "r4h0TOJ-WuM", 
description: "EDIT: Your bobber needs to have access to the sky for also treasure loot. Also need 2blocks of air above all water. To stop phantoms put slabs over player instead trapdoors. Tweak delay for best casting.") 									
vid14 = Video.create(title: "TNT Looting Witch Farm! - Beyond Logic 2: #10 - Minecraft 1.18 Let's Play Survival", 
familiarity: "Intermediate", 
video_type: "Primer, Tutorial, Story Mode", 
upload_date: "6/5/22", 
url: "QRaayPufpPE", 
description: "Today's episode goes off with a BANG! We need some redstone so it's time to look into Witch farms again. Trouble is, they've been majorly nerfed in 1.18 due to the world generation changes. We'll compare 1.17 to 1.18 and see what we can do to improve rates. Our secret weapon is TNT with looting! We also tell the story of how we got our dogs back but did we defeat Zorgon? Don't miss this explosive episode!")															
vid15 = Video.create(title: "11 Easy Farms for Minecraft 1.17/1.18 | Simply Minecraft Tutorial Recap (Java Edition)", 
familiarity: "Beginner, Intermediate", 
video_type: "Primer", 
upload_date: "7/11/21", 
url: "rPPqspS2wX0", 
description: "With the release of 1.17 it's time to review our previous simple farms to make sure they still work. We'll check each one and I'll provide tips and tricks to get the most out of your builds. If you've built one of these before and it doesn't work, check this video for some help and double check you've built it correctly. All farms here were tested in 1.17.1.")										
vid16 = Video.create(title: "SciCraft 166: Largest Solid Gold Cube In Survival", 
familiarity: "Beginner, Intermediate, Advanced", 
video_type: "Multiplayer", 
upload_date: "5/22/21", 
url: "4WXyYXk2O6M", 
description: "Lag friendly way to store 1 million gold blocks.")
vid17 = Video.create(title: "Dissecting Minecraft #1: Basic Redstone Components", 
familiarity: "Beginner, Intermediate", 
video_type: "Primer, Multiplayer", 
upload_date: "2/14/19", 
url: "oHmTDLE6geE", 
description: "Welcome to a brand new technical Minecraft series, Dissecting Minecraft! In this series myself and Methodzz (from the SciCraft server) will explore all things technical in Minecraft. We'll start with the basic redstone components, explain mob spawning algorithms and flying machines. We will also take apart contraptions to explain exactly how they work as well as build our own from scratch. In this episode we introduce at a high level:
★ Redstone Dust
★ Levers
★ Buttons
★ Pressure Plates
★ Redstone Touches
★ Strong/Weak Power
★ Redstone Blocks
★ Repeaters
★ Comparators
★ Pistons
★ Droppers
★ Dispensers
★ Hoppers
★ Observers
★ Tripwire
★ Trapped Chests")
vid18 = Video.create(title: "Dissecting Minecraft #2: More Basic Redstone Components", 
familiarity: "Beginner, Intermediate", 
video_type: "Primer, Multiplayer", 
upload_date: "2/21/19", 
url: "RhlA_O64hSA", 
description: "This week we dig a bit deeper in to the components we showed last time and also talk more about what happens inside a game tick.")
vid19 = Video.create(title: "Dissecting Minecraft #5: Logic Gates | Minecraft 1.13", 
familiarity: "Beginner, Intermediate, Computational", 
video_type: "Primer, Multiplayer", 
upload_date: "3/14/19", 
url: "d5p9bTBuRYk", 
description:	"This time we look at all of the common logic gates that you'll likely to use in your contraptions. We show you the old school way to do these and also some more modern alternatives!")								
vid20 = Video.create(title: "Dissecting Minecraft #6: Common Circuits | Minecraft 1.13", 
familiarity: "Beginner, Intermediate, Computational", 
video_type: "Primer, Multiplayer", 
upload_date: "3/21/19", 
url: "OZBTB8NIggc", 
description: "This week is all about common circuits that you can use as part of your contraptions, from RS NOR Latches to Raising Edge detectors we have them all covered here.")																		
vid21 = Video.create(title: "Dissecting Minecraft #7: The Comparator | Minecraft 1.13", 
familiarity: "Beginner, Intermediate", 
video_type: "Primer, Multiplayer", 
upload_date: "3/28/19", 
url: "Y1K6f7lSz2Y", 
description: "Today we focus on one of the most powerful components on the redstone toolkit, the comparator. Use it to read the contents of a container, do some maths, make clocks and pulse extenders. Wow, what a block!")															
vid22 = Video.create(title: "How To Build an Efficient Iron Farm Tutorial | Minecraft Java 1.16 (The Nether Update)", 
familiarity: "Intermediate, Advanced", 
video_type: "Primer, Tutorial", 
upload_date: "7/20/20", 
url: "BSwe-jerWX8", 
description: "Iron farms in Minecraft 1.16 - The Nether Update (Java Edition) have changed. In this tutorial I show you 3 different iron farm designs, each with their own pros and cons. We also walk through all the details of how iron farms work so you can create your very own design. One of these iron farms could be the most efficient iron farm possible in 1.16. If you want a simple design that's good enough for most players or would like to push the boundaries, I have the information and designs for you. Why not try to design your own iron farm and be as inventive as you can?")