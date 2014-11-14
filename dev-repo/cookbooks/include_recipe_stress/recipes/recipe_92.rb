if node["attr_level_2"]["attr_level_5"]["attr_level_4"]["attr_level_1"]["attr_level_1"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_4"]["attr_level_4"]["attr_level_1"]["attr_level_1"] = 1

if node["attr_level_2"]["attr_level_6"]["attr_level_1"]["attr_level_1"]["attr_level_1"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_2"]["attr_level_0"]["attr_level_2"]["attr_level_3"] = 2

if node["attr_level_0"]["attr_level_4"]["attr_level_1"]["attr_level_1"]["attr_level_3"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_3"]["attr_level_4"]["attr_level_1"]["attr_level_1"] = 16

if node["attr_level_0"]["attr_level_7"]["attr_level_0"]["attr_level_2"]["attr_level_0"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_9"]["attr_level_3"]["attr_level_2"]["attr_level_0"] = 15

if node["attr_level_7"]["attr_level_2"]["attr_level_2"]["attr_level_2"]["attr_level_3"] == 2
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_1"]["attr_level_2"]["attr_level_0"]["attr_level_0"] = 6

if node["attr_level_4"]["attr_level_2"]["attr_level_3"]["attr_level_0"]["attr_level_0"] == 13
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_4"]["attr_level_2"]["attr_level_0"]["attr_level_1"] = 6

if node["attr_level_4"]["attr_level_1"]["attr_level_6"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_4"]["attr_level_4"]["attr_level_5"] = 4

if node["attr_level_5"]["attr_level_8"]["attr_level_1"]["attr_level_0"]["attr_level_1"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_6"]["attr_level_0"]["attr_level_1"]["attr_level_2"] = 8

if node["attr_level_7"]["attr_level_8"]["attr_level_0"]["attr_level_4"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_8"]["attr_level_2"]["attr_level_1"]["attr_level_1"] = 0

if node["attr_level_3"]["attr_level_7"]["attr_level_2"]["attr_level_1"]["attr_level_2"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_2"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 9