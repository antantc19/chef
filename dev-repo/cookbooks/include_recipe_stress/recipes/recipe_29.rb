if node["attr_level_1"]["attr_level_1"]["attr_level_0"]["attr_level_2"]["attr_level_1"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_5"] = 10

if node["attr_level_2"]["attr_level_0"]["attr_level_4"]["attr_level_2"]["attr_level_2"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_4"]["attr_level_0"]["attr_level_3"] = 17

if node["attr_level_6"]["attr_level_9"]["attr_level_2"]["attr_level_2"]["attr_level_3"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_9"]["attr_level_0"]["attr_level_5"] = 5

if node["attr_level_9"]["attr_level_7"]["attr_level_4"]["attr_level_3"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_7"]["attr_level_9"] = 13

if node["attr_level_4"]["attr_level_17"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_9"]["attr_level_2"]["attr_level_0"]["attr_level_1"] = 2

if node["attr_level_3"]["attr_level_0"]["attr_level_2"]["attr_level_2"]["attr_level_1"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_5"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 17

if node["attr_level_4"]["attr_level_7"]["attr_level_2"]["attr_level_1"]["attr_level_3"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_2"]["attr_level_0"]["attr_level_0"]["attr_level_2"] = 13

if node["attr_level_1"]["attr_level_5"]["attr_level_6"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_1"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 5

if node["attr_level_1"]["attr_level_5"]["attr_level_4"]["attr_level_4"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_6"]["attr_level_3"]["attr_level_2"]["attr_level_1"] = 11

if node["attr_level_3"]["attr_level_7"]["attr_level_4"]["attr_level_1"]["attr_level_0"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_2"]["attr_level_5"] = 4