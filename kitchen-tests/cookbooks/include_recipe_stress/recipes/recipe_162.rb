if node["attr_level_7"]["attr_level_4"]["attr_level_2"]["attr_level_5"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_4"]["attr_level_0"]["attr_level_5"] = 10

if node["attr_level_4"]["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_2"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_1"]["attr_level_0"]["attr_level_2"]["attr_level_0"] = 8

if node["attr_level_7"]["attr_level_7"]["attr_level_1"]["attr_level_2"]["attr_level_2"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_2"]["attr_level_0"] = 15

if node["attr_level_8"]["attr_level_8"]["attr_level_4"]["attr_level_4"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_2"]["attr_level_3"]["attr_level_0"]["attr_level_3"] = 5

if node["attr_level_1"]["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_1"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_2"] = 10

if node["attr_level_5"]["attr_level_5"]["attr_level_0"]["attr_level_1"]["attr_level_1"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_1"]["attr_level_0"]["attr_level_0"]["attr_level_0"] = 8

if node["attr_level_5"]["attr_level_9"]["attr_level_3"]["attr_level_0"]["attr_level_1"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_7"]["attr_level_2"]["attr_level_2"]["attr_level_3"] = 15

if node["attr_level_3"]["attr_level_9"]["attr_level_4"]["attr_level_0"]["attr_level_1"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_5"]["attr_level_1"]["attr_level_2"]["attr_level_0"] = 7

if node["attr_level_6"]["attr_level_8"]["attr_level_1"]["attr_level_5"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_4"] = 15

if node["attr_level_7"]["attr_level_4"]["attr_level_2"]["attr_level_0"]["attr_level_0"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_1"]["attr_level_4"]["attr_level_2"]["attr_level_0"] = 14