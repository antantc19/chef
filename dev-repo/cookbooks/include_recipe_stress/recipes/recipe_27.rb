if node["attr_level_2"]["attr_level_0"]["attr_level_0"]["attr_level_5"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_5"]["attr_level_2"]["attr_level_0"]["attr_level_0"] = 12

if node["attr_level_5"]["attr_level_6"]["attr_level_1"]["attr_level_2"]["attr_level_0"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_1"]["attr_level_4"]["attr_level_2"]["attr_level_0"] = 0

if node["attr_level_10"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_7"]["attr_level_6"] = 11

if node["attr_level_1"]["attr_level_5"]["attr_level_3"]["attr_level_0"]["attr_level_0"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_12"] = 4

if node["attr_level_0"]["attr_level_5"]["attr_level_3"]["attr_level_0"]["attr_level_3"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_3"]["attr_level_1"]["attr_level_2"] = 14

if node["attr_level_6"]["attr_level_3"]["attr_level_4"]["attr_level_1"]["attr_level_2"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_7"]["attr_level_1"]["attr_level_0"]["attr_level_3"] = 8

if node["attr_level_3"]["attr_level_7"]["attr_level_2"]["attr_level_1"]["attr_level_3"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_1"]["attr_level_2"]["attr_level_1"]["attr_level_0"] = 14

if node["attr_level_6"]["attr_level_0"]["attr_level_1"]["attr_level_5"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_1"]["attr_level_5"] = 0

if node["attr_level_6"]["attr_level_2"]["attr_level_5"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_9"]["attr_level_1"]["attr_level_4"] = 7

if node["attr_level_9"]["attr_level_1"]["attr_level_4"]["attr_level_2"]["attr_level_2"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_3"]["attr_level_4"]["attr_level_2"]["attr_level_3"] = 18