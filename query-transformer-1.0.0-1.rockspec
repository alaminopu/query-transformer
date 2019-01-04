package = "query-transformer"

version = "1.0.0-1"     -- renumber, must match the info in the filename of this rockspec!
                      -- The version '0.1' is the source code version, the trailing '1' is the version of this rockspec.

-- supported_platforms = {"linux", "macosx"}

source = {
     url = "git://github.com/alaminopu/query-transformer",
     tag = "1.0.0"
}

description = {
  summary = "A kong Plugin that transform the query params sent by a client on the fly, before hitting the upstream server.",
  -- license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1"
  -- If you depend on other rocks, add them here
}

-- local pluginName = "query-transformer"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.query-transformer.handler"] = "kong/plugins/query-transformer/handler.lua",
    ["kong.plugins.query-transformer.access"] = "kong/plugins/query-transformer/access.lua",
    ["kong.plugins.query-transformer.schema"] = "kong/plugins/query-transformer/schema.lua"
  }
}
