local ngx = ngx
local kong = kong

-- declaring module
local _M = {}

local function transform_query(config)
  -- getting query value
  query = kong.request.get_query()

  old_name = config.from_q
  new_name = config.to_q

  query[new_name] = query[old_name]
  query[old_name] = nil

  -- updating query value
  kong.service.request.set_query(query)
end


function _M.execute(conf)
  -- transoforming query
  transform_query(conf)
end


return _M
