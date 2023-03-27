--[[ Copyright (c) 2022 Ghas
 * Part of More Storage Tanks
 *
 *
 * See LICENSE.md in the project directory for license information.
--]]

local copy_prototype = require('__flib__.data-util').copy_prototype



local base_tank = data.raw["storage-tank"]["storage-tank"]
base_tank.fast_replaceable_group = base_tank.fast_replaceable_group or "storage-tank"
base_tank.next_upgrade = "huge_storage-tank"

local huge_tank = copy_prototype(base_tank, "huge_storage-tank")
huge_tank.next_upgrade = nil
huge_tank.max_health = 3000
huge_tank.corpse = "huge_storage-tank-remnants"
huge_tank.fluid_box =
    {
      base_area = 2000,
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
huge_tank.two_direction_only = true
huge_tank.pictures.picture =
      {
       sheets =
       {
        {
          filename = "__MoreStorageTanksFixed__/graphics/entity/huge_storage-tank.png",
          priority = "extra-high",
          frames = 2,
          width = 110,
          height = 108,
          shift = util.by_pixel(0, 4),
          hr_version =
        {
          filename = "__MoreStorageTanksFixed__/graphics/entity/hr-huge_storage-tank.png",
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
  huge_tank
})