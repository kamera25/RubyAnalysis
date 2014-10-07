require "csv"


	# Accsess csv file
	CSV.open("member.csv","r") do |restu|
		p restu
	end


	# Accsess csv file
	arraycsv = CSV.read("member.csv")
	p arraycsv



	#Efficent accsess csv file (version>1.9)
	table = CSV.table("member.csv")
	
#	p table[0]
#	p table[0][1]
#	p table[:name]
	p table[:point]

	p table[:point].inject(:+)

=begin
# follow code is same mean of "p table[:point].inject(:+)"
 
	sum = 0
	table[:point].each do |point|
		sum = sum + point
	end
	p sum
=end
	

	##Create csv file
	CSV.open("output.csv","w") do |csv_writer|
		csv_writer <<["nakamura","prosessor","Hiroshima City University"]	
		csv_writer <<["kodama", "Ph.D", "Hiroshima University"]			
	end
=end
