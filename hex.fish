function hex
  set argv[1] (string replace "/" "" $argv[1])
  set my_path /Users/gml/MPLABXProjects/$argv[1]/dist/default/production/$argv[1].production.hex 
  cp -R $my_path ~/Desktop/
end
