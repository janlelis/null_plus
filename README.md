# +nil [![[version]](https://badge.fury.io/rb/null_plus.svg)](http://badge.fury.io/rb/null_plus)  [![[travis]](https://travis-ci.org/janlelis/null_plus.png)](https://travis-ci.org/janlelis/null_plus)

This gem redefines Ruby's unary `+` operator to turn null objects into nil. By default, the unary `+` operator is not used by Ruby, so overloading it is not so dangerous as it might have sounded to you when you read it.

Every object that returns [true for `null?`](https://github.com/janlelis/null_question) is considered a null object.


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

Copyright (C) 2015 Jan Lelis <http://janlelis.com>. Released under the MIT license.
