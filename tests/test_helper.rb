$:.unshift(File.dirname(__FILE__))

require "minitest/autorun"
require 'log4r'
require 'log4r/configurator'
require 'log4r/staticlogger'
require 'log4r/formatter/log4jxmlformatter'
require 'log4r/outputter/udpoutputter'
require 'log4r/outputter/consoleoutputters'
require 'log4r/yamlconfigurator'

def assert_nothing_raised
  begin
    yield
  rescue => e
    flunk "Should not have raised exception: #{e.class} : #{e.message}"
  end
end