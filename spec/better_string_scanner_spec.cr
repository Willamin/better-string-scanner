require "./spec_helper"
require "string_scanner"

describe BetterStringScanner do
  it "works" do
    s = StringScanner.new("hello world")
    actual = s.scan_until(/world/, include_pattern: false)
    expected = "hello "
    actual.should eq(expected)
  end
end
