if node["attr_level_2"]["attr_level_8"]["attr_level_4"]["attr_level_0"]["attr_level_1"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_7"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 6

if node["attr_level_7"]["attr_level_0"]["attr_level_4"]["attr_level_2"]["attr_level_0"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_8"]["attr_level_0"]["attr_level_0"]["attr_level_3"] = 0

if node["attr_level_9"]["attr_level_6"]["attr_level_5"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_5"]["attr_level_1"]["attr_level_0"]["attr_level_1"] = 6

if node["attr_level_0"]["attr_level_8"]["attr_level_0"]["attr_level_0"]["attr_level_2"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 9

if node["attr_level_8"]["attr_level_5"]["attr_level_1"]["attr_level_2"]["attr_level_3"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_0"] = 14

if node["attr_level_0"]["attr_level_0"]["attr_level_9"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_0"]["attr_level_5"] = 19

if node["attr_level_5"]["attr_level_9"]["attr_level_3"]["attr_level_5"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_8"]["attr_level_0"]["attr_level_1"]["attr_level_1"] = 18

if node["attr_level_2"]["attr_level_8"]["attr_level_2"]["attr_level_1"]["attr_level_1"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_8"]["attr_level_2"]["attr_level_4"] = 10

if node["attr_level_1"]["attr_level_9"]["attr_level_2"]["attr_level_4"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_1"]["attr_level_1"]["attr_level_2"]["attr_level_2"] = 6

if node["attr_level_0"]["attr_level_5"]["attr_level_3"]["attr_level_5"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_1"]["attr_level_2"]["attr_level_0"]["attr_level_1"] = 15