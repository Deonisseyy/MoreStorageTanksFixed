--[[ Copyright (c) 2022 Ghas
 * Part of More Storage Tanks
 *
 *
 * See LICENSE.md in the project directory for license information.
--]]

local copy_prototype = require('__flib__.data-util').copy_prototype



local base_tank = data.raw["storage-tank"]["storage-tank"]
base_tank.fast_replaceable_group = base_tank.fast_replaceable_group or "storage-tank"
base_tank.next_upgrade = "gigantic_storage-tank"

local gigantic_tank = copy_prototype(base_tank, "gigantic_storage-tank")
gigantic_tank.next_upgrade = nil
gigantic_tank.max_health = 5000
gigantic_tank.corpse = "gigantic_storage-tank-remnants"
gigantic_tank.fluid_box =
    {
      base_area = 8000,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} }
      },
	  hide_connection_info = true
    }
gigantic_tank.two_direction_only = true
gigantic_tank.pictures.picture =
      {
       sheets =
       {
        {
          filename = "__MoreStorageTanksFixed__/graphics/entity/gigantic_storage-tank.png",
          priority = "extra-high",
          frames = 2,
          width = 110,
          height = 108,
          shift = util.by_pixel(0, 4),
          hr_version =
        {
          filename = "__MoreStorageTanksFixed__/graphics/entity/hr-gigantic_storage-tank.png",
          priority = "extra-high",
          frames = 2,
          width = 219,
          height = 215,
          shift = util.by_pixel(-0.25, 3.75),
          scale = 0.5
        }
      },
      {
            filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
            priority = "extra-high",
            frames = 2,
            width = 146,
            height = 77,
            shift = util.by_pixel(30, 22.5),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/storage-tank/hr-storage-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 291,
              height = 153,
              shift = util.by_pixel(29.75, 22.25),
              scale = 0.5,
              draw_as_shadow = true
            }
      }
    } 
   }  


data:extend({
  gigantic_tank
})