Stresses the `include_recipe` logic

```
200.times do |i|
  File.open("recipe_#{i}.rb", "w+") do |f|
    recipe_contents = <<EOF
file "/tmp/testfile_#{i}" do
  action :create
end

directory "/tmp/directory_#{i}" do
  action :create
end  

EOF
    f.write(recipe_contents)
  end
end

File.open("stress.rb", "w+") do |f|
  200.times do |i|
    f.puts("include_recipe \"include_recipe_stress::recipe_#{i}\"")
  end
end
```
