require "rexml/document"

#Initialize process
file = REXML::Document.new(open("sweet.xml"))

#Normal print
p file.elements["oyastu/box/c"].next_element.next_element.next_element.text
p file.elements["oyastu/box[2]/c[1]"].text


#All print form element
file.elements.each("oyastu/box/c") do |element|
	p element.text
end

