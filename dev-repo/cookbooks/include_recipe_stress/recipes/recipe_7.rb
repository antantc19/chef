if node["attr_level_4"]["attr_level_0"]["attr_level_1"]["attr_level_0"]["attr_level_0"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_4"]["attr_level_2"]["attr_level_1"]["attr_level_0"] = 5

if node["attr_level_18"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_0"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 18

if node["attr_level_1"]["attr_level_5"]["attr_level_2"]["attr_level_2"]["attr_level_0"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_4"] = 7

if node["attr_level_0"]["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_1"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_5"]["attr_level_1"]["attr_level_1"]["attr_level_3"] = 8

if node["attr_level_8"]["attr_level_2"]["attr_level_9"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_8"]["attr_level_0"]["attr_level_1"]["attr_level_3"] = 4

if node["attr_level_9"]["attr_level_4"]["attr_level_3"]["attr_level_1"]["attr_level_3"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_9"]["attr_level_3"]["attr_level_5"] = 19

if node["attr_level_3"]["attr_level_4"]["attr_level_9"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_0"]["attr_level_2"]["attr_level_4"] = 5

if node["attr_level_5"]["attr_level_1"]["attr_level_0"]["attr_level_5"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_0"]["attr_level_3"] = 3

if node["attr_level_4"]["attr_level_14"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_1"]["attr_level_2"]["attr_level_3"] = 18

if node["attr_level_5"]["attr_level_1"]["attr_level_0"]["attr_level_4"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_5"]["attr_level_1"]["attr_level_4"] = 2