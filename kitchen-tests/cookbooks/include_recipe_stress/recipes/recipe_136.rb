if node["attr_level_1"]["attr_level_4"]["attr_level_0"]["attr_level_0"]["attr_level_0"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_9"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 9

if node["attr_level_6"]["attr_level_3"]["attr_level_3"]["attr_level_5"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_3"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 10

if node["attr_level_5"]["attr_level_3"]["attr_level_1"]["attr_level_1"]["attr_level_2"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_1"]["attr_level_2"]["attr_level_5"] = 12

if node["attr_level_6"]["attr_level_3"]["attr_level_2"]["attr_level_2"]["attr_level_3"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_2"]["attr_level_3"] = 0

if node["attr_level_9"]["attr_level_3"]["attr_level_4"]["attr_level_2"]["attr_level_3"] == 3
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_9"]["attr_level_2"]["attr_level_0"]["attr_level_0"] = 13

if node["attr_level_7"]["attr_level_2"]["attr_level_4"]["attr_level_0"]["attr_level_0"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_6"]["attr_level_0"]["attr_level_0"]["attr_level_2"] = 19

if node["attr_level_9"]["attr_level_7"]["attr_level_0"]["attr_level_0"]["attr_level_3"] == 13
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_7"]["attr_level_1"]["attr_level_1"]["attr_level_3"] = 5

if node["attr_level_5"]["attr_level_5"]["attr_level_0"]["attr_level_1"]["attr_level_3"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_2"]["attr_level_1"]["attr_level_2"]["attr_level_3"] = 19

if node["attr_level_0"]["attr_level_1"]["attr_level_1"]["attr_level_1"]["attr_level_3"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_4"]["attr_level_9"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 9

if node["attr_level_2"]["attr_level_0"]["attr_level_0"]["attr_level_0"]["attr_level_3"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_1"]["attr_level_2"]["attr_level_5"] = 14