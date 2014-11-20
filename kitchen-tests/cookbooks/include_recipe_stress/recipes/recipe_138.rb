if node["attr_level_3"]["attr_level_6"]["attr_level_2"]["attr_level_0"]["attr_level_0"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_6"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 9

if node["attr_level_2"]["attr_level_8"]["attr_level_3"]["attr_level_2"]["attr_level_3"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_3"]["attr_level_4"]["attr_level_0"]["attr_level_0"] = 14

if node["attr_level_8"]["attr_level_6"]["attr_level_3"]["attr_level_0"]["attr_level_0"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_9"]["attr_level_4"]["attr_level_2"]["attr_level_1"] = 1

if node["attr_level_4"]["attr_level_5"]["attr_level_0"]["attr_level_1"]["attr_level_3"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_3"]["attr_level_6"] = 0

if node["attr_level_2"]["attr_level_1"]["attr_level_1"]["attr_level_2"]["attr_level_3"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_8"]["attr_level_1"]["attr_level_2"]["attr_level_0"] = 0

if node["attr_level_3"]["attr_level_9"]["attr_level_1"]["attr_level_2"]["attr_level_0"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_7"]["attr_level_2"]["attr_level_0"]["attr_level_0"] = 7

if node["attr_level_2"]["attr_level_1"]["attr_level_3"]["attr_level_1"]["attr_level_0"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_5"]["attr_level_1"]["attr_level_4"] = 15

if node["attr_level_1"]["attr_level_4"]["attr_level_2"]["attr_level_2"]["attr_level_1"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_2"] = 7

if node["attr_level_7"]["attr_level_4"]["attr_level_6"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_6"]["attr_level_0"]["attr_level_1"]["attr_level_0"] = 4

if node["attr_level_9"]["attr_level_2"]["attr_level_4"]["attr_level_0"]["attr_level_3"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_4"]["attr_level_3"]["attr_level_0"]["attr_level_2"] = 18