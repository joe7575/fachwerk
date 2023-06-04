--[[

	Fachwerk

	Copyright (C) 2017-2022 Joachim Stolberg
	LGPLv2.1+
	See LICENSE.txt for more information

]]--


local function register_node(name, desc, tiles)
	minetest.register_node("fachwerk:"..name, {
		description = "Fachwerk "..desc,
		tiles = tiles,
		paramtype2 = "facedir",
		groups = {cracky=2, crumbly=2, choppy=2},
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
	})
end

local StonesPNG = {"fachwerk_silver_sandstone.png", "fachwerk_desert_sandstone.png", "fachwerk_desert_stone.png", "fachwerk_brick.png"}
local StonesName = {"Silver Sandstone", "Desert Sandstone", "Desert Stone", "Brick Block"}
local StonesNode = {"default:silver_sandstone", "default:desert_sandstone", "default:desert_stone", "default:brick"}
for idx,png in ipairs(StonesPNG) do
	name = StonesName[idx]
										-- up, down, right, left, back, front
	register_node(idx.."0", name.." 0", {png, png, png, png, png, png})
	register_node(idx.."1", name.." 1", {png.."^fachwerk7.png", png, png.."^fachwerk1.png", png.."^fachwerk1.png", png.."^fachwerk1.png^[transformFX" ,png.."^fachwerk1.png^[transformFX"})
	register_node(idx.."2", name.." 2", {png, png, png.."^fachwerk2.png", png.."^fachwerk2.png", png.."^fachwerk2.png^[transformFX" ,png.."^fachwerk2.png^[transformFX"})
	register_node(idx.."3", name.." 3", {png, png, png.."^fachwerk3.png", png.."^fachwerk3.png", png.."^fachwerk3.png^[transformFX" ,png.."^fachwerk3.png^[transformFX"})
	register_node(idx.."4", name.." 4", {png.."^fachwerk7.png", png, png.."^fachwerk4.png", png.."^fachwerk4.png", png.."^fachwerk4.png^[transformFX" ,png.."^fachwerk4.png^[transformFX"})
	register_node(idx.."5", name.." 5", {png, png, png.."^fachwerk5.png", png.."^fachwerk5.png", png.."^fachwerk5.png^[transformFX" ,png.."^fachwerk5.png^[transformFX"})
	register_node(idx.."6", name.." 6", {png.."^fachwerk7.png", png, png.."^fachwerk6.png", png.."^fachwerk6.png", png.."^fachwerk6.png^[transformFX" ,png.."^fachwerk6.png^[transformFX"})
	register_node(idx.."7", name.." 7", {png.."^fachwerk7.png", png, png.."^fachwerk9.png", png.."^fachwerk9.png", png.."^fachwerk9.png^[transformFX" ,png.."^fachwerk9.png^[transformFX"})
	register_node(idx.."8", name.." 8", {png, png, png.."^fachwerk10.png", png.."^fachwerk10.png", png.."^fachwerk10.png^[transformFX" ,png.."^fachwerk10.png^[transformFX"})
	register_node(idx.."9", name.." 9", {png.."^fachwerk7.png", png, png.."^fachwerk5.png^fachwerk1.png", png.."^fachwerk5.png^fachwerk1.png", png.."^fachwerk5.png^fachwerk1.png" ,png.."^fachwerk5.png^fachwerk1.png"})
	register_node(idx.."10", name.." 10", {png, png, png.."^fachwerk5.png^fachwerk3.png", png.."^fachwerk5.png^fachwerk3.png", png.."^fachwerk5.png^fachwerk3.png" ,png.."^fachwerk5.png^fachwerk3.png"})
	
	register_node(idx.."A", name.." A", {png, png, png.."^fachwerkA.png", png.."^fachwerkA.png^[transformFX", png.."^fachwerkA.png^[transformFX" ,png.."^fachwerkA.png"})
	register_node(idx.."B", name.." B", {png, png, png.."^fachwerkB.png", png.."^fachwerkB.png^[transformFX", png.."^fachwerkB.png^[transformFX" ,png.."^fachwerkB.png"})
	register_node(idx.."C", name.." C", {png, png, png.."^fachwerkC.png", png.."^fachwerkC.png^[transformFX", png.."^fachwerkC.png^[transformFX" ,png.."^fachwerkC.png"})
	register_node(idx.."D", name.." D", {png, png, png.."^fachwerkD.png", png.."^fachwerkD.png^[transformFX", png.."^fachwerkD.png^[transformFX" ,png.."^fachwerkD.png"})
	register_node(idx.."E", name.." E", {png, png, png.."^fachwerkE.png", png.."^fachwerkE.png", png.."^fachwerkE.png^[transformFX" ,png.."^fachwerkE.png^[transformFX"})
end

register_node("X5", " Beam", {"fachwerk7.png", "fachwerk8.png", "fachwerk7.png", "fachwerk8.png", "fachwerk7.png", "fachwerk8.png"})
register_node("W", " Holzwand", {"fachwerkW.png", "fachwerkW.png","fachwerkW.png^[transformR90", "fachwerkW.png^[transformR90", "fachwerkW.png^[transformR90", "fachwerkW.png^[transformR90"})
register_node("F", " Schindel 1", {"fachwerkF.png"})
register_node("S", " Schindel 2", {"fachwerkS.png"})
register_node("pflaster", " Pflaster", {"fachwerk_pflaster.png"})
register_node("Z", " Dachziegel", {"fachwerkZ.png"})
register_node("B", " ZiegelStein", {"fachwerk_brick.png"})
register_node("NM", " Natursteinmauer", {
		"fachwerk_stone_wall.png", 
		"fachwerk_stone_wall.png", 
		"fachwerk_stone_wall1.png",
		"fachwerk_stone_wall2.png", 
		"fachwerk_stone_wall3.png", 
		"fachwerk_stone_wall4.png"})

register_node("NE", "Natursteinecke", {
		-- up, down, right, left, back, front
		"fachwerk_stone_wall.png", 
		"fachwerk_stone_wall.png", 
		"fachwerk_stone_edge2.png^[transformFX",
		"fachwerk_stone_edge1.png", 
		"fachwerk_stone_edge1.png^[transformFX", 
		"fachwerk_stone_edge2.png"})

minetest.register_node("fachwerk:window1", {
		description = "Fachwerk Window 1",
		drawtype = "nodebox",
		tiles = {
			"fachwerk_win1_frame.png",
			"fachwerk_win1_frame.png",
			"fachwerk_win1_frame.png^[transformR90",
			"fachwerk_win1_frame.png^[transformR90",
			"fachwerk_win1.png",
			"fachwerk_win1.png",
		},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2, crumbly=2, choppy=2},
		node_box = {
			type = "fixed",
			fixed = {
				{ -8/16, -8/16, -1/32,  8/16,  8/16,  1/32}, -- glass
				{ -8/16,  6/16, -1/16,  8/16,  8/16,  1/16}, -- top
				{ -8/16, -8/16, -1/16,  8/16, -6/16,  1/16}, -- bottom
				{ -8/16, -8/16, -1/16, -6/16,  8/16,  1/16}, -- left
				{  6/16, -8/16, -1/16,  8/16,  8/16,  1/16}, -- right
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{ -0.5, -0.5, -1/16,  0.5, 0.5, 1/16},
			},
		},
		use_texture_alpha = "blend",
		sunlight_propagates = true,
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("fachwerk:window2", {
		description = "Fachwerk Window 4",
		drawtype = "nodebox",
		tiles = {
			"fachwerk_win2_frame.png",
			"fachwerk_win2_frame.png",
			"fachwerk_win2_frame.png^[transformR90",
			"fachwerk_win2_frame.png^[transformR90",
			"fachwerk_win2.png",
			"fachwerk_win2.png",
		},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2, crumbly=2, choppy=2},
		node_box = {
			type = "fixed",
			fixed = {
				{ -8/16, -8/16, -1/32,  8/16,  8/16,  1/32}, -- glass
				{ -8/16,  6/16, -1/16,  8/16,  8/16,  1/16}, -- top
				{ -8/16, -8/16, -1/16,  8/16, -6/16,  1/16}, -- bottom
				{ -8/16, -8/16, -1/16, -6/16,  8/16,  1/16}, -- left
				{  6/16, -8/16, -1/16,  8/16,  8/16,  1/16}, -- right
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{ -0.5, -0.5, -1/16,  0.5, 0.5, 1/16},
			},
		},
		use_texture_alpha = "blend",
		paramtype = "light",
		light_source = 0,	
		sunlight_propagates = true,
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "fachwerk:X5 8",
	recipe = {
		{"default:pine_tree", "", "default:pine_tree"},
		{"", "", ""},
		{"default:pine_tree", "", "default:pine_tree"},
	}
})

minetest.register_craft({
	output = "fachwerk:F 4",
	recipe = {
		{"", "fachwerk:X5", "fachwerk:X5"},
		{"", "fachwerk:X5", "fachwerk:X5"},
		{"", "", ""},
	}
})

minetest.register_craft({
	type="shapeless",
	output = "fachwerk:Z",
	recipe = {"fachwerk:B"}
})

minetest.register_craft({
	output = "fachwerk:B 2",
	recipe = {
		{"default:clay_brick", "default:clay_brick", "default:clay_brick"},
		{"default:clay_brick", "default:clay_brick", "default:clay_brick"},
		{"default:clay_brick", "default:clay_brick", "default:clay_brick"},
	}
})

minetest.register_craft({
	output = "fachwerk:W 4",
	recipe = {
		{"", "default:pine_tree", "default:pine_wood"},
		{"", "default:pine_wood", "default:pine_tree"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "fachwerk:S",
	recipe = {{"fachwerk:F"}}
})

minetest.register_craft({
	output = "fachwerk:F",
	recipe = {{"fachwerk:S"}}
})

minetest.register_craft({
	output = "fachwerk:pflaster 4",
	recipe = {{"default:cobble", "default:desert_cobble"}, 
            {"default:sandstone", "default:gravel"}}
})

minetest.register_craft({
	output = "fachwerk:NM",
	recipe = {{"fachwerk:pflaster"}}
})

minetest.register_craft({
	output = "fachwerk:NE",
	recipe = {{"fachwerk:NM"}}
})

minetest.register_craft({
	output = "fachwerk:window1 2",
	recipe = {{"fachwerk:X5", "default:glass"}}
})

minetest.register_craft({
	output = "fachwerk:window2",
	recipe = {{"fachwerk:window1", "dye:white"}}
})


for idx,node in ipairs(StonesNode) do
	minetest.register_craft({
		output = "fachwerk:"..idx.."0 2",
		recipe = {
			{"", "fachwerk:"..idx.."3", ""},
			{"", "fachwerk:"..idx.."1", ""},
			{"", "", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."1 2",
		recipe = {
			{"", "fachwerk:X5", ""},
			{"", node, ""},
			{"", "", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."2 3",
		recipe = {
			{"", "", ""},
			{"fachwerk:X5", node, ""},
			{"", "", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."3 2",
		recipe = {
			{"", "", ""},
			{"", node, ""},
			{"", "fachwerk:X5", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."4 3",
		recipe = {
			{"", "fachwerk:X5", ""},
			{"", node, ""},
			{"", "fachwerk:X5", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."5 3",
		recipe = {
			{"", "", ""},
			{"fachwerk:X5", node, "fachwerk:X5"},
			{"", "", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."6 3",
		recipe = {
			{"", "fachwerk:X5", ""},
			{"fachwerk:X5", node, ""},
			{"", "", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."7 5",
		recipe = {
			{"", "fachwerk:X5", ""},
			{"fachwerk:X5", node, "fachwerk:X5"},
			{"", "fachwerk:X5", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."8 4",
		recipe = {
			{"", "", ""},
			{"fachwerk:X5", node, "fachwerk:X5"},
			{"", "fachwerk:X5", ""}}})
	
	minetest.register_craft({
		output = "fachwerk:"..idx.."9 4",
		recipe = {
			{"", "", ""},
			{"fachwerk:X5", node, "fachwerk:X5"},
			{"fachwerk:X5", "", "fachwerk:X5"}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."10 4",
		recipe = {
			{"fachwerk:X5", "", "fachwerk:X5"},
			{"fachwerk:X5", node, "fachwerk:X5"},
			{"", "", ""}}})
	
	minetest.register_craft({
		output = "fachwerk:"..idx.."A 2",
		recipe = {
			{"fachwerk:X5", "", ""},
			{"", node, ""},
			{"", "", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."B 2",
		recipe = {
			{"", "", "fachwerk:X5"},
			{"", node, ""},
			{"", "", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."C 2",
		recipe = {
			{"", "", ""},
			{"", node, ""},
			{"fachwerk:X5", "", ""}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."D 2",
		recipe = {
			{"", "", ""},
			{"", node, ""},
			{"", "", "fachwerk:X5"}}})
	minetest.register_craft({
		output = "fachwerk:"..idx.."E 3",
		recipe = {
			{"", "", ""},
			{"", node, ""},
			{"fachwerk:X5", "", "fachwerk:X5"}}})
end	

if minetest.global_exists("moreblocks") and minetest.global_exists("stairsplus") then
	
	stairsplus:register_all("fachwerk", "pflaster", "fachwerk:pflaster", {
		description="Fachwerk Pflaster",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerk_pflaster.png"},
		sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("fachwerk", "F", "fachwerk:F", {
		description="Fachwerk Schindel 1",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerkF.png"},
		sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("fachwerk", "S", "fachwerk:S", {
		description="Fachwerk Schindel 2",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerkS.png"},
		sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("fachwerk", "X5", "fachwerk:X5", {
		description="Fachwerk Beam",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerk8.png"},
		sounds = default.node_sound_wood_defaults(),
	})
	
	stairsplus:register_all("fachwerk", "Z", "fachwerk:Z", {
		description="Fachwerk Dachziegel",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerkZ.png"},
		sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("fachwerk", "B", "fachwerk:B", {
		description="Fachwerk Ziegelstein",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerk_brick.png"},
		sounds = default.node_sound_stone_defaults(),
	})
	
	stairsplus:register_all("fachwerk", "W", "fachwerk:W", {
		description="Fachwerk Holzwand",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerkW.png"},
		sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("fachwerk", "NM", "fachwerk:NM", {
		description="Fachwerk Natursteinmauer",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={
			"fachwerk_stone_wall.png", 
			"fachwerk_stone_wall.png", 
			"fachwerk_stone_wall1.png",
			"fachwerk_stone_wall2.png", 
			"fachwerk_stone_wall3.png", 
			"fachwerk_stone_wall4.png"
		},
		sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("fachwerk", "NE", "fachwerk:NE", {
		description="Fachwerk Natursteinecke",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={
		"fachwerk_stone_wall.png", 
		"fachwerk_stone_wall.png", 
		"fachwerk_stone_edge2.png^[transformFX",
		"fachwerk_stone_edge1.png", 
		"fachwerk_stone_edge1.png^[transformFX", 
		"fachwerk_stone_edge2.png",
		},
		sounds = default.node_sound_wood_defaults(),
	})
end

-- not needed
minetest.unregister_item("fachwerk:40")
