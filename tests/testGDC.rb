require_relative 'test_helper'

class TestGDC < Minitest::Test
  include Log4r

  def test_gdc_default
    assert(GDC.get() == "testGDC.rb", "Expected 'testGDC.rb' got '#{GDC.get()}'" )
  end

  def test_gdc_set
    assert_nothing_raised() { GDC.set("testGDCset") }
    assert(GDC.get() == "testGDCset", "Expected 'testGDCset' got '#{GDC.get()}'" )
  end
  
  def test_gdc_threaded
    assert_nothing_raised() { GDC.set("testGDCset") }
    t = Thread.new("test GDC thread") do |name|
       assert_raises(RuntimeError) { GDC.set("somethingelse") }
    end
    t.join
    assert(GDC.get() == "testGDCset", "Expected 'testGDCset' got '#{GDC.get()}'" )
  end

end
