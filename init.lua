local color_group = {dig_immediate = 2,}

--Flags

minetest.register_node("pride:flag", {
    tiles = {
		"pride_top.png",
		"pride_bottom.png",
		"pride_side.png",
		"pride_side.png"},
	groups = color_group,
	description = "flag"
})

--Pride nodes

minetest.register_node("pride:purple", {
    tiles = {'purple.png'},
	groups = color_group,
	description = "purple"
})

minetest.register_node("pride:blue", {
    tiles = {'blue.png'},
	groups = color_group,
	description = "blue"
})

minetest.register_node("pride:green", {
    tiles = {'green.png'},
	groups = color_group,
	description = "green"
})

minetest.register_node("pride:yellow", {
    tiles = {'yellow.png'},
	groups = color_group,
	description = "yellow"
})

minetest.register_node("pride:orange", {
    tiles = {'orange.png'},
	groups = color_group,
	description = "orange"
})

minetest.register_node("pride:red", {
    tiles = {'red.png'},
	groups = color_group,
	description = "red"
})

--Plants

minetest.register_node("pride:grass", {
	drawtype = "plantlike",
	tiles = {"pride_side.png"},
	description = "pride grass",
	walkable = false,
	inventory_image = "pride_grass_inv.png",
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1,
	normal_grass = 1, flammable = 1},
	waving = 1
})


minetest.register_craft({
    type = "shaped",
    output = "pride:flag 10",
    recipe = {
        {"dye:red", "dye:orange", "dye:yellow"},
        {"dye:green", "dye:blue", "dye:violet"}
    },
})
