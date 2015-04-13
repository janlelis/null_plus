require_relative "../lib/null_plus"
require "minitest/autorun"

describe NullPlus do
  describe "Object#+@" do
    it "returns itself for non-null objects" do
      object = Object.new
      assert_equal object, +object
    end 

    it "returns nil for nil" do
      assert_equal nil, +nil
    end 

    it "returns nil for custom null objects" do
      null_object = Object.new
      def null_object.null?() true end 
      assert_equal nil, +null_object
    end 
  end 
end


