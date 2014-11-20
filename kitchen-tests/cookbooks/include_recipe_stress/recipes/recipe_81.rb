if node["attr_level_8"]["attr_level_4"]["attr_level_0"]["attr_level_1"]["attr_level_2"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_3"]["attr_level_0"]["attr_level_1"]["attr_level_1"] = 4

if node["attr_level_0"]["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_0"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_7"]["attr_level_4"]["attr_level_1"]["attr_level_0"] = 19

if node["attr_level_0"]["attr_level_1"]["attr_level_4"]["attr_level_2"]["attr_level_0"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_8"]["attr_level_0"]["attr_level_1"]["attr_level_2"] = 15

if node["attr_level_7"]["attr_level_1"]["attr_level_4"]["attr_level_1"]["attr_level_1"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_7"]["attr_level_3"]["attr_level_1"]["attr_level_2"] = 2

if node["attr_level_8"]["attr_level_8"]["attr_level_4"]["attr_level_2"]["attr_level_2"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_2"]["attr_level_4"]["attr_level_2"]["attr_level_2"] = 19

if node["attr_level_0"]["attr_level_4"]["attr_level_0"]["attr_level_4"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_5"]["attr_level_0"]["attr_level_5"] = 13

if node["attr_level_0"]["attr_level_6"]["attr_level_2"]["attr_level_1"]["attr_level_3"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_6"]["attr_level_3"]["attr_level_1"]["attr_level_1"] = 3

if node["attr_level_0"]["attr_level_3"]["attr_level_4"]["attr_level_4"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_1"]["attr_level_1"]["attr_level_3"] = 14

if node["attr_level_6"]["attr_level_9"]["attr_level_3"]["attr_level_0"]["attr_level_3"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_9"]["attr_level_1"]["attr_level_0"]["attr_level_0"] = 7

if node["attr_level_9"]["attr_level_3"]["attr_level_0"]["attr_level_0"]["attr_level_3"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_3"]["attr_level_2"]["attr_level_0"]["attr_level_3"] = 15