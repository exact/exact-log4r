# $Id$
# Test guts sent in by chetreddy bug #27184
#
# Note: this test won't always catch a threading problem, as it
# relies on a brute force approach.  NUM_THREADS can be increased
# to stress the system longer and therefore increasing the chance
# of exposing a threading issue, however, it is not a definitive
# test.
#

require_relative 'test_helper'

class TestThreads < Minitest::Test
  include Log4r

  NUMTHREADS = 1000

  def test_threads

    assert_nothing_raised do
      (0..NUMTHREADS).map do |i|
        Thread.new do
          Thread.current[:logger] = Log4r::Logger.new "Hello #{i}"
          Thread.current[:logger].outputters = [StdoutOutputter.new("log4r#{i}")]
          Thread.current[:logger].outputters.each { |j| j.flush }
          Thread.current.exit()
        end
      end.each do |thr| thr.join end
    end
  end
end
