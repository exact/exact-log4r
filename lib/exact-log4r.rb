# :include: log4r/rdoc/log4r
#
# == Other Info
#
# Author::      Leon Torres
# Version::     $Id$

require 'log4r/version'

require 'log4r/outputter/consoleoutputters'
require "log4r/outputter/datefileoutputter"
require "log4r/outputter/syslogoutputter"

require "log4r/formatter/patternformatter"

require "log4r/loggerfactory"
require "log4r/GDC"
require "log4r/NDC"
require "log4r/MDC"
