# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Whiskey.create(
	title: "Dalmore 18 Year Old",
	description: "Dalmores trademark style is luscious notes of orange, chocolate and spices.",
	taste: 1,
	color: 2,
	smokiness: 3
);

Whiskey.create(
	title: "Ardbeg Uigeadail",
	description: "The strength of this whisky is 54.2 % Vol.",
	taste: 2,
	color: 3,
	smokiness: 4
);

Whiskey.create(
	title: "Laphroaig Lore",
	description: "Laphroaig Lore is a 2016 addition to the distillery range.
	 Made up of whiskies aged in a combination of quarter casks, sherry casks and
	 reused peated casks.",
	taste: 3,
	color: 4,
	smokiness: 5
);

Whiskey.create(
	title: "Port Charlotte 10 Year Old",
	description: "Introduced as the flagship Port Charlotte expression produced
	 by Bruichladdich in 2018, this 10 year old single malt from the Isle of Islay
	 is a lip-smackingly smoky number indeed.",
	taste: 4,
	color: 5,
	smokiness: 1
);

Whiskey.create(
	title: "Glenallachie 12 Year Old",
	description: "Matured in a mixture of virgin oak, oloroso sherry and Pedro Ximénez
	 sherry casks, this has sweet flavours of honey, marzipan, bananas and butterscotch.",
	taste: 5,
	color: 1,
	smokiness: 2
);

Whiskey.create(
	title: "Speyside Single Malt Scotch Whisky",
	description: "At one end of the spectrum there are the light, grassy whiskies such
	 as Glenlivet; at the other end lie the rich, sweet, sherried qualities of Glenrothes
	 and Macallan.",
	taste: 5,
	color: 2,
	smokiness: 3
);

Whiskey.create(
	title: "Ichiro's Malt & Grain (46.5%) Japanese Blended Whisky",
	description: "A blend from the king of independent Japanese distillers, Ichiro Akuto.",
	taste: 4,
	color: 3,
	smokiness: 4
);

Whiskey.create(
	title: "Glen Scotia Victoriana / Cask Strength. Campbeltown Single Malt Scotch Whisky",
	description: "Made with whisky drawn from casks specially selected by their master blender,
	 after which the whisky enjoys a finishing period in heavily charred oak casks.",
	taste: 3,
	color: 4,
	smokiness: 5
);

Whiskey.create(title: "Eagle Rare",
	description: "Masterfully crafted and carefully aged for no less than ten years.",
	taste: 2,
	color: 5,
	smokiness: 1
);

Whiskey.create(
	title: 'Ancient Age',
	description: "Young straight bourbon bottled at 80 proof.",
	taste: 1,
	color: 1,
	smokiness: 2
);
