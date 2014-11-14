if node["attr_level_3"]["attr_level_7"]["attr_level_1"]["attr_level_1"]["attr_level_1"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_1"]["attr_level_1"]["attr_level_1"]["attr_level_0"] = 5

if node["attr_level_4"]["attr_level_6"]["attr_level_4"]["attr_level_1"]["attr_level_1"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_1"]["attr_level_2"]["attr_level_1"]["attr_level_3"] = 1

if node["attr_level_7"]["attr_level_8"]["attr_level_2"]["attr_level_2"]["attr_level_2"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_5"]["attr_level_3"]["attr_level_2"]["attr_level_2"] = 5

if node["attr_level_7"]["attr_level_5"]["attr_level_2"]["attr_level_4"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_9"]["attr_level_5"] = 17

if node["attr_level_3"]["attr_level_8"]["attr_level_2"]["attr_level_0"]["attr_level_0"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_5"]["attr_level_3"]["attr_level_0"]["attr_level_1"] = 4

if node["attr_level_8"]["attr_level_6"]["attr_level_1"]["attr_level_1"]["attr_level_2"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_4"]["attr_level_5"] = 12

if node["attr_level_0"]["attr_level_1"]["attr_level_4"]["attr_level_4"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_5"]["attr_level_6"] = 0

if node["attr_level_2"]["attr_level_1"]["attr_level_0"]["attr_level_2"]["attr_level_1"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_6"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 0

if node["attr_level_8"]["attr_level_6"]["attr_level_3"]["attr_level_1"]["attr_level_3"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_4"]["attr_level_3"]["attr_level_4"] = 11

if node["attr_level_7"]["attr_level_3"]["attr_level_2"]["attr_level_1"]["attr_level_2"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_8"]["attr_level_0"]["attr_level_2"]["attr_level_2"] = 15