require_relative "null_plus/version"

require "null_question"

class Object
  def +@
    null? ? nil : self
  end
end
