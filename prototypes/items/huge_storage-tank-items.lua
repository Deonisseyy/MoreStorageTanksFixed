--[[ Copyright (c) 2022 Ghas
 * Part of More Storage Tanks
 *
 *
 * See LICENSE.md in the project directory for license information.
--]]

data:extend({
  {
    type = "item",
    name = "huge_storage-tank",
    icon = "__MoreStorageTanksFixed__/graphics/icon/huge_storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-d[huge_storage-tank]",
    place_result = "huge_storage-tank",
    stack_size = 50
  }
})