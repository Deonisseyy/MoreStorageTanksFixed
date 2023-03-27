--[[ Copyright (c) 2022 Ghas
 * Part of More Storage Tanks
 *
 *
 * See LICENSE.md in the project directory for license information.
--]]

data:extend({
  {
    type = "item",
    name = "large_storage-tank",
    icon = "__MoreStorageTanksFixed__/graphics/icon/large_storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-c[large_storage-tank]",
    place_result = "large_storage-tank",
    stack_size = 50
  }
})