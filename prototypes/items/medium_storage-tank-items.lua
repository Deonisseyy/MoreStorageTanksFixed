--[[ Copyright (c) 2022 Ghas
 * Part of More Storage Tanks
 *
 *
 * See LICENSE.md in the project directory for license information.
--]]

data:extend({
  {
    type = "item",
    name = "medium_storage-tank",
    icon = "__MoreStorageTanksFixed__/graphics/icon/medium_storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-b[medium_storage-tank]",
    place_result = "medium_storage-tank",
    stack_size = 50
  }
})