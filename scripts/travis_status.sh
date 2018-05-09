#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

html_data = open(ARGV[0]).read
@test = Nokogiri::HTML(html_data)
status_string = @test.xpath('//text').map.each.each { |i| i.inner_text }.last

color_code = 31 # red
if status_string == "passing"
	color_code = 32 # green
end

puts "\e[#{color_code}m#{status_string}\e[0m"
