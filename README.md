# +`nil` [![[version]](https://badge.fury.io/rb/null_plus.svg)](https://badge.fury.io/rb/null_plus) [![[ci]](https://github.com/janlelis/null_plus/workflows/Test/badge.svg)](https://github.com/janlelis/null_plus/actions?query=workflow%3ATest)

This gem redefines Ruby's unary `+` operator to turn null objects into nil. By default, the unary `+` operator is rarely¹ used by Ruby, so overloading it is not so dangerous as it might have sounded to you when you read it.

Every object that returns [true for `null?`](https://github.com/janlelis/null_question) is considered a null object.

¹ (Ruby 2.3 introduced `+` for String: It will return an unfrozen version of the string)

## Setup

Add to your **Gemfile**:

```ruby
gem "null_plus"
```

## Usage

```ruby
class NullObject
  def null?
    true
  end
end

null = NullObject.new

+nil #=> nil
+null #=> nil
+"some object" #=> "some object"

# Useful for settings defaults or checking conditions:
if +null
  fail # will not run
end

value = +null || 42 #=> 42

```

### Hint

Pay attention to proper operator precedence when chaining method class:

```ruby
class NullObject
  def null?
    true
  end
end

null = NullObject.new

+null.class #=> NullObject
(+null).class #=> NilClass
```

## J-_-L

Copyright (C) 2015 Jan Lelis <https://janlelis.com>. Released under the MIT license.
