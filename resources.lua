img = {}

local lg = love.graphics

local IMAGE_FILES = {
  --"balanced+annihilation+big+loadscreen-min",
  "nomap",
  "gamepad",
  "nothome",
  "monitor",
  "Menu",
  "MenuExpanded",
  "eye",
  "players"
}

local flag_codes ={
"AF",
"AX",
"AL",
"DZ",
"AS",
"AD",
"AO",
"AI",
"AG",
"AR",
"AM",
"AW",
"AU",
"AT",
"AZ",
"BS",
"BH",
"BD",
"BB",
"BY",
"BE",
"BZ",
"BJ",
"BM",
"BT",
"BO",
"BA",
"BW",
"BV",
"BR",
"IO",
"BN",
"BG",
"BF",
"BI",
"CV",
"KH",
"CM",
"CA",
"KY",
"CF",
"TD",
"CL",
"CN",
"CX",
"CC",
"CO",
"KM",
"CG",
"CD",
"CK",
"CR",
"CI",
"HR",
"CU",
"CY",
"CZ",
"DK",
"DJ",
"DM",
"DO",
"EC",
"EG",
"SV",
"GQ",
"ER",
"EE",
"SZ",
"ET",
"FK",
"FO",
"FJ",
"FI",
"FR",
"GF",
"PF",
"TF",
"GA",
"GM",
"GE",
"DE",
"GH",
"GI",
"GR",
"GL",
"GD",
"GP",
"GU",
"GT",
"GN",
"GW",
"GY",
"HT",
"HM",
"VA",
"HN",
"HK",
"HU",
"IS",
"IN",
"ID",
"IR",
"IQ",
"IE",
"IL",
"IT",
"JM",
"JP",
"JO",
"KZ",
"KE",
"KI",
"KP",
"KR",
"KW",
"KG",
"LA",
"LV",
"LB",
"LS",
"LR",
"LY",
"LI",
"LT",
"LU",
"MO",
"MG",
"MW",
"MY",
"MV",
"ML",
"MT",
"MH",
"MQ",
"MR",
"MU",
"YT",
"MX",
"FM",
"MD",
"MC",
"MN",
"ME",
"MS",
"MA",
"MZ",
"MM",
"NA",
"NR",
"NP",
"NL",
"NC",
"NZ",
"NI",
"NE",
"NG",
"NU",
"NF",
"MK",
"MP",
"NO",
"OM",
"PK",
"PW",
"PS",
"PA",
"PG",
"PY",
"PE",
"PH",
"PN",
"PL",
"PT",
"PR",
"QA",
"RE",
"RO",
"RU",
"RW",
"SH",
"KN",
"LC",
"PM",
"VC",
"WS",
"SM",
"ST",
"SA",
"SN",
"RS",
"SC",
"SL",
"SG",
"SK",
"SI",
"SB",
"SO",
"ZA",
"GS",
"ES",
"LK",
"SD",
"SR",
"SJ",
"SE",
"CH",
"SY",
"TW",
"TJ",
"TZ",
"TH",
"TL",
"TG",
"TK",
"TO",
"TT",
"TN",
"TR",
"TM",
"TC",
"TV",
"UG",
"UA",
"AE",
"GB",
"US",
"UM",
"UY",
"UZ",
"VU",
"VE",
"VN",
"VG",
"VI",
"WF",
"XX",
"EH",
"YE",
"ZM",
"ZW",
}

--success = love.system.openURL( url )

ranks = {}
for i=1,8 do
  ranks[i] = lg.newImage("data/images/ranks/rank"..i..".png")
end

local function loadImages()
  	for i,v in ipairs(IMAGE_FILES) do
		img[v] = lg.newImage("data/images/"..v..".png")
	end
end

cursor = {}
cursor[2] = love.mouse.newCursor("data/images/scrollVertical.png", 25, 25)
cursor[3] = love.mouse.newCursor("data/images/scrollHorizontal.png", 25, 25)

flag = {}
local function loadFlags()
  	for i,v in ipairs(flag_codes) do
		flag[v] = lg.newImage("data/images/png/"..v:lower()..".png")
	end
end

loadFlags()
loadImages()

colors = {}
colors.w = {1, 1, 1}
colors.bg = {28/255, 28/255, 28/255}
colors.bb = {33/255, 33/255, 33/255}
colors.bt = {112/255, 112/255, 112/255}
colors.bargreen = {28/255, 252/255, 139/255}
colors.orange = {1, 156/255, 67/255}

fonts = {}
fonts.notable = lg.newFont("data/fonts/Notable/Notable-Regular.ttf", 30)
fonts.roboto = lg.newFont("data/fonts/Roboto/Roboto-Black.ttf", 20)
fonts.robotosmall = lg.newFont("data/fonts/Roboto/Roboto-Black.ttf", 12)
fonts.robotoitalic = lg.newFont("data/fonts/Roboto/Roboto-Italic.ttf", 20)
fonts.latosmall = lg.newFont("data/fonts/Lato/Lato-Regular.ttf", 12)
fonts.latomedium = lg.newFont("data/fonts/Lato/Lato-Regular.ttf", 18)
fonts.latoitalic = lg.newFont("data/fonts/Lato/Lato-Italic.ttf", 12)
fonts.latoitalicmedium = lg.newFont("data/fonts/Lato/Lato-Italic.ttf", 18)
fonts.latolightitalic = lg.newFont("data/fonts/Lato/Lato-LightItalic.ttf", 12)
fonts.latobold = lg.newFont("data/fonts/Lato/Lato-Bold.ttf", 12)
fonts.latoboldbig = lg.newFont("data/fonts/Lato/Lato-Bold.ttf", 16)
fonts.latobolditalic = lg.newFont("data/fonts/Lato/Lato-BoldItalic.ttf", 12)
  
sound = {}
sound.ring = love.audio.newSource("data/sounds/doorbell-old-tring.ogg", "static")
sound.ding = love.audio.newSource("data/sounds/bell_02.ogg", "static")
sound.click = love.audio.newSource("data/sounds/metal_02.ogg", "static")
sound.click:setVolume(0.5)
sound.click:setPitch(0.5)