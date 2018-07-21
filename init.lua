--[[

	Fachwerk

	Copyright (C) 2017 Joachim Stolberg
	LGPLv2.1+
	See LICENSE.txt for more information

	History:
	2017-12-10  v0.01  first version

]]--


local function register_node(name, desc, tiles)
	minetest.register_node("fachwerk:"..name, {
		description = "Fachwerk "..desc,
		tiles = tiles,
		paramtype = "light",
		light_source = 0,	
		sunlight_propagates = true,
		paramtype2 = "facedir",
		groups = {cracky=2, crumbly=2, choppy=2},
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
	})
end

local StonesPNG = {"fachwerk_silver_sandstone.png", "fachwerk_desert_sandstone.png", "fachwerk_desert_stone.png", "default_brick.png"}
local StonesName = {"Silver Sandstone", "Desert Sandstone", "Desert Stone", "Brick Block"}
local StonesNode = {"default:silver_sandstone", "default:desert_sandstone", "default:desert_stone", "default:brick"}
for idx,png in ipairs(StonesPNG) do
	name = StonesName[idx]
										-- up, down, right, left, back, front
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
register_node("Z", " Ziegel", {"fachwerkZ.png"})
register_node("bukki", " Bukkis", {'shingles_asphalt.png'}) ------------- Joe
register_node("reet", " Reet", {'reet.png'}) ------------- Joe

minetest.register_node("fachwerk:window1", {
		description = "Fachwerk Window 1",
		drawtype = "nodebox",
		tiles = {"fachwerk_win1.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2, crumbly=2, choppy=2},
		node_box = {
			type = "fixed",
			fixed = {
				{ -0.5, -0.5, -0.1,  0.5, 0.5,  0.1},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{ -0.5, -0.5, -0.1,  0.5, 0.5,  0.1},
			},
		},
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("fachwerk:window2", {
		description = "Fachwerk Window 4",
		drawtype = "nodebox",
		tiles = {"fachwerk_win2.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2, crumbly=2, choppy=2},
		node_box = {
			type = "fixed",
			fixed = {
				{ -0.5, -0.5, -0.1,  0.5, 0.5,  0.1},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{ -0.5, -0.5, -0.1,  0.5, 0.5,  0.1},
			},
		},
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
	recipe = {"default:brick"}
})

minetest.register_craft({ ------------------- Joe
	type="shapeless",
	output = "fachwerk:bukki",
	recipe = {"fachwerk:Z"}
})

minetest.register_craft({ ------------------- Joe
	type="shapeless",
	output = "fachwerk:reet",
	recipe = {"farming:straw"}
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
	output = "fachwerk:window1 2",
	recipe = {{"fachwerk:X5", "default:glass"}}
})

minetest.register_craft({
	output = "fachwerk:window2",
	recipe = {{"fachwerk:window1", "dye:white"}}
})


for idx,node in ipairs(StonesNode) do
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

if minetest.get_modpath("moreblocks") then
	
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
		description="Fachwerk Ziegel",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerkZ.png"},
		sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("fachwerk", "W", "fachwerk:W", {
		description="Fachwerk Holzwand",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerkW.png"},
		sounds = default.node_sound_wood_defaults(),
	})
	stairsplus:register_all("fachwerk", "bukki", "fachwerk:bukki", { ------------------- Joe
		description="Fachwerk Bukkis",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"shingles_asphalt.png"},
		sounds = default.node_sound_wood_defaults(),
	})
	stairsplus:register_all("fachwerk", "reet", "fachwerk:reet", { ------------------- Joe
		description="Fachwerk Reet",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"fachwerk_reet.png"},
		sounds = default.node_sound_wood_defaults(),
	})
end


------------------- Joe
minetest.register_node("fachwerk:cherry_leaves", {
    description = "Cherry Leaves",
	drawtype = "plantlike",
	tiles = {"fachwerk_cherry_leaves2.png"},
	--special_tiles = {"fachwerk_cherry_leaves.png"},
	inventory_image = "fachwerk_cherry_leaves.png",
	wield_image = "fachwerk_cherry_leaves.png",
	visual_scale = 1.4,
	walkable = true,
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),

})

minetest.register_node("fachwerk:cherry_leaves2", {
    description = "Cherry Leaves",
	drawtype = "allfaces_optional",
	tiles = {"fachwerk_cherry_leaves.png"},
	--special_tiles = {"fachwerk_cherry_leaves.png"},
	walkable = true,
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),

})

minetest.register_craft({
	type = "shapeless",
	output = "fachwerk:cherry_leaves",
	recipe = {"default:leaves"},
})

minetest.register_craft({
	type = "shapeless",
	output = "fachwerk:cherry_leaves2",
	recipe = {"fachwerk:cherry_leaves"},
})
------------------- Joe