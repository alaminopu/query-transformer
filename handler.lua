local BasePlugin = require "kong.plugins.base_plugin"

-- The actual logic is implemented in those modules
local access = require "kong.plugins.query-transformer.access"

local QueryTransformerHandler = BasePlugin:extend()

function QueryTransformerHandler:new()
  QueryTransformerHandler.super.new(self, "query-transformer")
end


function QueryTransformerHandler:access(config)
  QueryTransformerHandler.super.access(self)

  -- Execute any function from the module loaded in `access`,
  access.execute(config)
end

QueryTransformerHandler.PRIORITY = 799  -- request-transformer	801
QueryTransformerHandler.VERSION = "1.0.0-1"

return QueryTransformerHandler
