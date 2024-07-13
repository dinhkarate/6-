-- This information tells other players more about the mod
name = "6月の雨"
description = [[Rain Rain Rain]]
author = "Dinh"
version = "10.6"
forumthread = ""


api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = { "Mưa tháng sáu" }
configuration_options = {
    {
        name = "amenosuki",
        label = "Rain time interval",
        options = {
            { description = "0",     data = 0 },
            { description = "30",     data = 30 },
            { description = "60",    data = 60 },
            { description = "120", data = 120 },
            { description = "180", data = 180 },
            { description = "240",     data = 240 },
            { description = "300",     data = 300 },
        },
        default = 0,
    },
}