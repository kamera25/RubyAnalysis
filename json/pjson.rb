require "json"
	
	#JSON load
	jsondata = Array.new()
	open("pjson.json") do |data|
		jsondata = JSON.load( data)
	end


	#JSON save
	cdata = [  {"name" => "Hiroshima City University"}, { "url" => "http://www.hiroshima-cu.ac.jp/"}]
	open("savjson.json", "w") do |file|
		JSON.dump( cdata, file)
	end
	

	#JSON update
	cdata = [  {"name" => "Hiroshima City University"}, { "url" => "http://www.hiroshima-cu.ac.jp/"}]
	open("updatajson.json", "w") do |file|
		JSON.dump( cdata, file)
		JSON.dump( jsondata, file)	
	end

