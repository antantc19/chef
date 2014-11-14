if node["attr_level_5"]["attr_level_4"]["attr_level_4"]["attr_level_2"]["attr_level_1"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_0"]["attr_level_3"]["attr_level_2"]["attr_level_2"] = 12

if node["attr_level_6"]["attr_level_8"]["attr_level_3"]["attr_level_0"]["attr_level_1"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_0"]["attr_level_4"]["attr_level_5"] = 0

if node["attr_level_5"]["attr_level_9"]["attr_level_3"]["attr_level_2"]["attr_level_0"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_1"]["attr_level_4"]["attr_level_3"] = 3

if node["attr_level_9"]["attr_level_0"]["attr_level_1"]["attr_level_0"]["attr_level_2"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_6"]["attr_level_2"]["attr_level_1"]["attr_level_3"] = 15

if node["attr_level_2"]["attr_level_16"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_6"]["attr_level_0"]["attr_level_3"] = 4

if node["attr_level_1"]["attr_level_8"]["attr_level_4"]["attr_level_0"]["attr_level_3"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_1"]["attr_level_4"]["attr_level_2"]["attr_level_3"] = 13

if node["attr_level_3"]["attr_level_1"]["attr_level_1"]["attr_level_2"]["attr_level_2"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_5"]["attr_level_2"]["attr_level_1"]["attr_level_0"] = 7

if node["attr_level_1"]["attr_level_0"]["attr_level_1"]["attr_level_1"]["attr_level_2"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_3"]["attr_level_4"]["attr_level_1"]["attr_level_2"] = 7

if node["attr_level_2"]["attr_level_4"]["attr_level_4"]["attr_level_2"]["attr_level_2"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_3"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 13

if node["attr_level_5"]["attr_level_1"]["attr_level_0"]["attr_level_2"]["attr_level_2"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_9"]["attr_level_0"]["attr_level_2"]["attr_level_3"] = 2