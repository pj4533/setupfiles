#!/usr/bin/env ruby

require 'travis/yaml'
require 'open3'


  content = File.read('.travis.yml')
  Travis::Yaml.parse! content do |config|
    cmd = "#{config[:script]}"
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      while line = stdout.gets
        print line
      end
    end
  end
