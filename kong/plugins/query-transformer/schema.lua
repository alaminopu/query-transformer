return {
  no_consumer = true, -- this plugin will only be applied to Services or Routes,
  fields = {
    -- Describe your plugin's configuration's schema here.
    from_q = {type = "string", required = true},
    to_q = {type = "string", required = true},
  },
  self_check = function(schema, plugin_t, dao, is_updating)
    -- perform any custom verification
    return true
  end
}
