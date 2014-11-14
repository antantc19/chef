if node["attr_level_1"]["attr_level_6"]["attr_level_1"]["attr_level_2"]["attr_level_0"] == 7
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_8"]["attr_level_4"]["attr_level_2"]["attr_level_1"] = 7

if node["attr_level_3"]["attr_level_6"]["attr_level_0"]["attr_level_1"]["attr_level_0"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_6"]["attr_level_0"]["attr_level_0"]["attr_level_3"] = 12

if node["attr_level_0"]["attr_level_7"]["attr_level_1"]["attr_level_1"]["attr_level_2"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_5"]["attr_level_3"]["attr_level_4"] = 18

if node["attr_level_6"]["attr_level_8"]["attr_level_2"]["attr_level_0"]["attr_level_1"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_7"]["attr_level_1"]["attr_level_1"]["attr_level_3"] = 19

if node["attr_level_3"]["attr_level_9"]["attr_level_3"]["attr_level_2"]["attr_level_1"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_5"]["attr_level_4"]["attr_level_2"]["attr_level_2"] = 13

if node["attr_level_5"]["attr_level_6"]["attr_level_0"]["attr_level_1"]["attr_level_2"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_6"]["attr_level_6"] = 7

if node["attr_level_5"]["attr_level_5"]["attr_level_2"]["attr_level_0"]["attr_level_3"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_6"]["attr_level_9"] = 10

if node["attr_level_5"]["attr_level_0"]["attr_level_2"]["attr_level_4"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_6"]["attr_level_3"]["attr_level_0"]["attr_level_1"] = 12

if node["attr_level_7"]["attr_level_9"]["attr_level_1"]["attr_level_2"]["attr_level_1"] == 9
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_7"]["attr_level_4"]["attr_level_2"]["attr_level_0"] = 13

if node["attr_level_3"]["attr_level_6"]["attr_level_0"]["attr_level_2"]["attr_level_1"] == 10
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_5"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 1