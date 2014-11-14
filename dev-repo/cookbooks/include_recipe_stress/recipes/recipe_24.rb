if node["attr_level_5"]["attr_level_5"]["attr_level_2"]["attr_level_2"]["attr_level_1"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_0"]["attr_level_1"]["attr_level_1"]["attr_level_2"]["attr_level_1"] = 14

if node["attr_level_0"]["attr_level_1"]["attr_level_1"]["attr_level_2"]["attr_level_2"] == 16
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_0"]["attr_level_4"]["attr_level_2"]["attr_level_2"] = 10

if node["attr_level_9"]["attr_level_0"]["attr_level_2"]["attr_level_3"] == 17
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_3"]["attr_level_0"]["attr_level_1"]["attr_level_2"] = 15

if node["attr_level_9"]["attr_level_8"]["attr_level_1"]["attr_level_3"] == 0
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_1"]["attr_level_7"]["attr_level_0"]["attr_level_1"]["attr_level_0"] = 15

if node["attr_level_5"]["attr_level_2"]["attr_level_1"]["attr_level_1"]["attr_level_3"] == 15
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_6"]["attr_level_5"]["attr_level_4"]["attr_level_2"]["attr_level_1"] = 13

if node["attr_level_9"]["attr_level_0"]["attr_level_1"]["attr_level_3"] == 11
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_8"]["attr_level_3"]["attr_level_2"]["attr_level_5"] = 0

if node["attr_level_2"]["attr_level_5"]["attr_level_2"]["attr_level_0"]["attr_level_0"] == 18
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_0"]["attr_level_3"]["attr_level_0"]["attr_level_3"] = 17

if node["attr_level_1"]["attr_level_9"]["attr_level_2"]["attr_level_5"] == 4
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_7"]["attr_level_6"]["attr_level_4"]["attr_level_1"]["attr_level_3"] = 2

if node["attr_level_8"]["attr_level_4"]["attr_level_4"]["attr_level_0"]["attr_level_0"] == 1
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_2"]["attr_level_2"]["attr_level_0"]["attr_level_0"]["attr_level_0"] = 1

if node["attr_level_3"]["attr_level_2"]["attr_level_0"]["attr_level_0"]["attr_level_0"] == 19
  Chef::Log.info("Attr Check Hit!")
end


node.default["attr_level_9"]["attr_level_1"]["attr_level_2"]["attr_level_0"]["attr_level_2"] = 8