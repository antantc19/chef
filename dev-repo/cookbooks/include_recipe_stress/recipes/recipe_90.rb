if node["attr_level_1"]["attr_level_2"]["attr_level_2"]["attr_level_1"]["attr_level_1"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_0"]["attr_level_1"]["attr_level_1"]["attr_level_1"] = 7

if node["attr_level_6"]["attr_level_9"]["attr_level_0"]["attr_level_3"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_0"]["attr_level_1"]["attr_level_5"] = 1

if node["attr_level_0"]["attr_level_8"]["attr_level_0"]["attr_level_2"]["attr_level_1"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_5"]["attr_level_2"]["attr_level_1"]["attr_level_3"] = 19

if node["attr_level_7"]["attr_level_0"]["attr_level_3"]["attr_level_0"]["attr_level_1"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_4"]["attr_level_3"]["attr_level_1"]["attr_level_1"] = 11

if node["attr_level_4"]["attr_level_2"]["attr_level_3"]["attr_level_1"]["attr_level_1"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_8"]["attr_level_2"]["attr_level_2"]["attr_level_3"] = 6

if node["attr_level_2"]["attr_level_1"]["attr_level_2"]["attr_level_2"]["attr_level_0"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_9"]["attr_level_2"]["attr_level_5"] = 2

if node["attr_level_5"]["attr_level_17"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_4"]["attr_level_1"]["attr_level_0"]["attr_level_0"] = 14

if node["attr_level_8"]["attr_level_5"]["attr_level_4"]["attr_level_1"]["attr_level_3"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_6"]["attr_level_3"]["attr_level_0"]["attr_level_1"] = 16

if node["attr_level_0"]["attr_level_5"]["attr_level_1"]["attr_level_2"]["attr_level_1"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_4"]["attr_level_1"]["attr_level_5"] = 11

if node["attr_level_5"]["attr_level_6"]["attr_level_1"]["attr_level_2"]["attr_level_3"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_1"]["attr_level_1"]["attr_level_2"]["attr_level_2"] = 19