if node["attr_level_1"]["attr_level_8"]["attr_level_1"]["attr_level_2"]["attr_level_0"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_8"]["attr_level_2"]["attr_level_1"]["attr_level_0"] = 8

if node["attr_level_5"]["attr_level_7"]["attr_level_3"]["attr_level_2"]["attr_level_3"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_1"]["attr_level_1"]["attr_level_5"] = 0

if node["attr_level_0"]["attr_level_4"]["attr_level_5"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_16"] = 19

if node["attr_level_7"]["attr_level_5"]["attr_level_0"]["attr_level_3"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_7"]["attr_level_1"]["attr_level_2"]["attr_level_2"] = 0

if node["attr_level_6"]["attr_level_6"]["attr_level_1"]["attr_level_0"]["attr_level_0"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_8"]["attr_level_4"]["attr_level_0"]["attr_level_1"] = 16

if node["attr_level_3"]["attr_level_7"]["attr_level_4"]["attr_level_1"]["attr_level_3"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_6"]["attr_level_1"]["attr_level_0"]["attr_level_3"] = 0

if node["attr_level_1"]["attr_level_5"]["attr_level_7"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_8"]["attr_level_2"]["attr_level_0"]["attr_level_1"] = 5

if node["attr_level_7"]["attr_level_9"]["attr_level_2"]["attr_level_5"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_6"]["attr_level_4"]["attr_level_3"] = 7

if node["attr_level_5"]["attr_level_6"]["attr_level_3"]["attr_level_0"]["attr_level_0"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_1"] = 19

if node["attr_level_5"]["attr_level_3"]["attr_level_0"]["attr_level_1"]["attr_level_0"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_7"]["attr_level_5"] = 13