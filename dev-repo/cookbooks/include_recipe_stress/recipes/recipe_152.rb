if node["attr_level_1"]["attr_level_3"]["attr_level_3"]["attr_level_2"]["attr_level_2"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_2"]["attr_level_0"]["attr_level_1"]["attr_level_2"] = 5

if node["attr_level_4"]["attr_level_7"]["attr_level_3"]["attr_level_2"]["attr_level_2"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_8"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 18

if node["attr_level_4"]["attr_level_3"]["attr_level_2"]["attr_level_0"]["attr_level_0"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_3"]["attr_level_0"]["attr_level_5"] = 18

if node["attr_level_7"]["attr_level_6"]["attr_level_2"]["attr_level_0"]["attr_level_2"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_4"]["attr_level_3"]["attr_level_2"]["attr_level_3"] = 11

if node["attr_level_1"]["attr_level_18"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_2"]["attr_level_3"]["attr_level_0"]["attr_level_0"] = 9

if node["attr_level_3"]["attr_level_0"]["attr_level_0"]["attr_level_5"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_0"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 16

if node["attr_level_7"]["attr_level_0"]["attr_level_3"]["attr_level_5"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_7"]["attr_level_3"]["attr_level_3"] = 7

if node["attr_level_2"]["attr_level_5"]["attr_level_0"]["attr_level_2"]["attr_level_3"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_0"]["attr_level_3"]["attr_level_0"]["attr_level_0"] = 0

if node["attr_level_5"]["attr_level_7"]["attr_level_3"]["attr_level_0"]["attr_level_0"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_0"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 1

if node["attr_level_3"]["attr_level_6"]["attr_level_3"]["attr_level_0"]["attr_level_1"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_8"]["attr_level_9"] = 14