--[[ Copyright (c) 2022 Ghas
 * Part of More Storage Tanks
 *
 *
 * See LICENSE.md in the project directory for license information.
--]]

require ("util")

destroyed_rail_pictures = function()
  return rail_pictures_internal({{"metals", "metals-remnants", mipmap = true, variations = 3, priority = "high"},
                                 {"backplates", "backplates-remnants", mipmap = true, variations = 3, priority = "high"},
                                 {"ties", "ties-remnants", variations = 3, priority = "high"},
                                 {"stone_path", "stone-path-remnants", variations = 3, priority = "high"},
                                 {"stone_path_background", "stone-path-background-remnants", variations = 3, priority = "high"}})
end

function make_rotated_animation_variations_from_sheet(variation_count, sheet) --makes remnants work with more than 1 variation
  local result = {}

  local function set_y_offset(variation, i)
    local frame_count = variation.frame_count or 1
    local line_length = variation.line_length or frame_count
    if (line_length < 1) then
      line_length = frame_count
    end

    local height_in_frames = math.floor((frame_count * variation.direction_count + line_length - 1) / line_length)
    -- if (height_in_frames ~= 1) then
    --   log("maybe broken sheet: h=" .. height_in_frames .. ", vc=" .. variation_count .. ", " .. variation.filename)
    -- end
    variation.y = variation.height * (i - 1) * height_in_frames
  end

  for i = 1,variation_count do
    local variation = util.table.deepcopy(sheet)

    if variation.layers then
      for _, layer in pairs(variation.layers) do
        set_y_offset(layer, i)
        if (layer.hr_version) then
          set_y_offset(layer.hr_version, i)
        end
      end
    else
      set_y_offset(variation, i)
      if (variation.hr_version) then
        set_y_offset(variation.hr_version, i)
      end
    end

    table.insert(result, variation)
  end
 return result
end

local remnants =
{
 {
    type = "corpse",
    name = "medium_storage-tank-remnants",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-d-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/medium_storage-tank-remnants.png",
      line_length = 1,
      width = 212,
      height = 140,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(27, 21), --shift = util.by_pixel(-3, 10.5),
      hr_version =
      {
        filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/hr-medium_storage-tank-remnants.png",
        line_length = 1,
        width = 426,
        height = 282,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(27, 21), --shift = util.by_pixel(-2.5, 10.5),
        scale = 0.5
      }
    })
 },

 {
    type = "corpse",
    name = "large_storage-tank-remnants",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-d-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/large_storage-tank-remnants.png",
      line_length = 1,
      width = 212,
      height = 140,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(27, 21), --shift = util.by_pixel(-3, 10.5),
      hr_version =
      {
        filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/hr-large_storage-tank-remnants.png",
        line_length = 1,
        width = 426,
        height = 282,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(27, 21), --shift = util.by_pixel(-2.5, 10.5),
        scale = 0.5
      }
    })
 },

 {
    type = "corpse",
    name = "huge_storage-tank-remnants",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-d-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/huge_storage-tank-remnants.png",
      line_length = 1,
      width = 212,
      height = 140,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(27, 21), --shift = util.by_pixel(-3, 10.5),
      hr_version =
      {
        filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/hr-huge_storage-tank-remnants.png",
        line_length = 1,
        width = 426,
        height = 282,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(27, 21), --shift = util.by_pixel(-2.5, 10.5),
        scale = 0.5
      }
    })
 },

 {
    type = "corpse",
    name = "enormous_storage-tank-remnants",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-d-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/enormous_storage-tank-remnants.png",
      line_length = 1,
      width = 212,
      height = 140,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(27, 21), --shift = util.by_pixel(-3, 10.5),
      hr_version =
      {
        filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/hr-enormous_storage-tank-remnants.png",
        line_length = 1,
        width = 426,
        height = 282,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(27, 21), --shift = util.by_pixel(-2.5, 10.5),
        scale = 0.5
      }
    })
 },

 {
    type = "corpse",
    name = "gigantic_storage-tank-remnants",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-d-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/gigantic_storage-tank-remnants.png",
      line_length = 1,
      width = 212,
      height = 140,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(27, 21), --shift = util.by_pixel(-3, 10.5),
      hr_version =
      {
        filename = "__MoreStorageTanksFixed__/graphics/entity/remnants/hr-gigantic_storage-tank-remnants.png",
        line_length = 1,
        width = 426,
        height = 282,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(27, 21), --shift = util.by_pixel(-2.5, 10.5),
        scale = 0.5
      }
    })
 }
}

data:extend(remnants)