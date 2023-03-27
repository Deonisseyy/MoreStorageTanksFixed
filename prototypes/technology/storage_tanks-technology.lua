--[[ Copyright (c) 2022 Ghas
 * Part of More Storage Tanks
 *
 *
 * See LICENSE.md in the project directory for license information.
--]]

data:extend(
{
  {
    type = "technology",
    name = "medium-fluid-storage",
    icon = "__MoreStorageTanksFixed__/graphics/icon/medium_storage-tank.png",
    icon_size = 64,
    prerequisites = {"fluid-handling"},
    
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium_storage-tank"
      }
    },
    unit =
    {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "d-a-a"
  },


  {
    type = "technology",
    name = "large-fluid-storage",
    icon = "__MoreStorageTanksFixed__/graphics/icon/large_storage-tank.png",
    icon_size = 64,
    prerequisites = {"medium-fluid-storage"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "large_storage-tank"
      }
    },
    unit =
    {
      count = 400,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 45
    },
    order = "d-a-a"
  },

  {
    type = "technology",
    name = "huge-fluid-storage",
    icon = "__MoreStorageTanksFixed__/graphics/icon/huge_storage-tank.png",
    icon_size = 64,
    prerequisites = {"large-fluid-storage"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "huge_storage-tank"
      }
    },
    unit =
    {
      count = 550,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 60
    },
    order = "d-a-a"
  },

  {
    type = "technology",
    name = "enormous-fluid-storage",
    icon = "__MoreStorageTanksFixed__/graphics/icon/enormous_storage-tank.png",
    icon_size = 64,
    prerequisites = {"huge-fluid-storage"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "enormous_storage-tank"
      }
    },
    unit =
    {
      count = 750,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 75
    },
    order = "d-a-a"
  },

  {
    type = "technology",
    name = "gigantic-fluid-storage",
    icon = "__MoreStorageTanksFixed__/graphics/icon/gigantic_storage-tank.png",
    icon_size = 64,
    prerequisites = {"enormous-fluid-storage"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gigantic_storage-tank"
      }
    },
    unit =
    {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 90
    },
    order = "d-a-a"
  }
}
)




