--[[ Copyright (c) 2022 Ghas
 * Part of More Storage Tanks
 *
 *
 * See LICENSE.md in the project directory for license information.
--]]

data:extend(
{
  {
    type = "recipe",
    name = "medium_storage-tank",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"storage-tank", 2},
      {"steel-plate", 10}
    },
    result = "medium_storage-tank"
  },

  {
    type = "recipe",
    name = "large_storage-tank",
    energy_required = 7,
    enabled = false,
    ingredients =
    {
      {"medium_storage-tank", 2},
      {"steel-plate", 20},
      {"low-density-structure", 5}
    },
    result = "large_storage-tank"
  },

  {
    type = "recipe",
    name = "huge_storage-tank",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"large_storage-tank", 2},
      {"steel-plate", 10},
      {"low-density-structure", 10},
      {"plastic-bar", 5}
    },
    result = "huge_storage-tank"
  },

  {
    type = "recipe",
    name = "enormous_storage-tank",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
      {"huge_storage-tank", 2},
      {"steel-plate", 10},
      {"low-density-structure", 20},
      {"plastic-bar", 10}
    },
    result = "enormous_storage-tank"
  },

  {
    type = "recipe",
    name = "gigantic_storage-tank",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
      {"enormous_storage-tank", 2},
      {"steel-plate", 10},
      {"low-density-structure", 40},
      {"plastic-bar", 20}
    },
    result = "gigantic_storage-tank"
  },
}
)