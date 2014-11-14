if node["attr_level_1"]["attr_level_1"]["attr_level_1"]["attr_level_1"]["attr_level_2"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_9"]["attr_level_0"]["attr_level_2"]["attr_level_2"] = 2

if node["attr_level_1"]["attr_level_0"]["attr_level_1"]["attr_level_1"]["attr_level_1"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_6"]["attr_level_4"]["attr_level_0"]["attr_level_0"] = 18

if node["attr_level_6"]["attr_level_5"]["attr_level_0"]["attr_level_2"]["attr_level_3"] == 12
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_4"]["attr_level_2"]["attr_level_1"]["attr_level_2"] = 6

if node["attr_level_8"]["attr_level_9"]["attr_level_8"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_7"]["attr_level_0"]["attr_level_1"]["attr_level_2"] = 9

if node["attr_level_9"]["attr_level_8"]["attr_level_4"]["attr_level_1"]["attr_level_2"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_5"]["attr_level_5"]["attr_level_1"]["attr_level_1"]["attr_level_1"] = 3

if node["attr_level_4"]["attr_level_5"]["attr_level_4"]["attr_level_2"]["attr_level_3"] == 8
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_9"]["attr_level_7"] = 8

if node["attr_level_9"]["attr_level_6"]["attr_level_4"]["attr_level_4"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_7"]["attr_level_2"]["attr_level_5"] = 11

if node["attr_level_9"]["attr_level_6"]["attr_level_3"]["attr_level_1"]["attr_level_0"] == 14
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_1"]["attr_level_2"]["attr_level_1"]["attr_level_1"] = 6

if node["attr_level_2"]["attr_level_9"]["attr_level_2"]["attr_level_1"]["attr_level_0"] == 6
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_3"]["attr_level_9"]["attr_level_1"]["attr_level_4"] = 5

if node["attr_level_7"]["attr_level_9"]["attr_level_1"]["attr_level_1"]["attr_level_2"] == 5
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_3"]["attr_level_7"] = 3