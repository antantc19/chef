if node["attr_level_3"]["attr_level_5"]["attr_level_4"]["attr_level_1"]["attr_level_2"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_0"]["attr_level_2"]["attr_level_2"]["attr_level_3"] = 6

if node["attr_level_0"]["attr_level_5"]["attr_level_2"]["attr_level_1"]["attr_level_2"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_6"]["attr_level_4"]["attr_level_2"]["attr_level_1"] = 15

if node["attr_level_5"]["attr_level_1"]["attr_level_4"]["attr_level_1"]["attr_level_2"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_2"]["attr_level_1"]["attr_level_0"]["attr_level_0"] = 15

if node["attr_level_3"]["attr_level_1"]["attr_level_2"]["attr_level_2"]["attr_level_1"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_0"]["attr_level_5"] = 9

if node["attr_level_3"]["attr_level_1"]["attr_level_2"]["attr_level_1"]["attr_level_1"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_3"]["attr_level_0"]["attr_level_1"]["attr_level_1"] = 8

if node["attr_level_3"]["attr_level_7"]["attr_level_0"]["attr_level_2"]["attr_level_2"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_8"]["attr_level_1"]["attr_level_1"]["attr_level_2"] = 2

if node["attr_level_4"]["attr_level_5"]["attr_level_0"]["attr_level_2"]["attr_level_1"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_0"]["attr_level_1"]["attr_level_2"]["attr_level_0"] = 1

if node["attr_level_7"]["attr_level_9"]["attr_level_3"]["attr_level_0"]["attr_level_2"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_1"]["attr_level_3"]["attr_level_1"]["attr_level_3"] = 2

if node["attr_level_9"]["attr_level_6"]["attr_level_4"]["attr_level_1"]["attr_level_3"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_8"]["attr_level_1"]["attr_level_2"]["attr_level_3"] = 18

if node["attr_level_4"]["attr_level_3"]["attr_level_0"]["attr_level_5"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_2"]["attr_level_2"]["attr_level_2"]["attr_level_1"] = 17