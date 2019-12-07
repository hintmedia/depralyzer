# Depralyzer

This gem will help you analyze the morass of deprecation warnings when you are planning an upgrade.


## Installation

https://rubygems.org/gems/depralyzer

    gem install depralyzer

## Usage

    depralyzer ./deprecations.log

## Options

```
$ depralyzer -h
Usage: depralyzer [options]
    -o VAL                           Output file (default: ./log)
        --output-file VAL
    -v                               Print version
        --version
```

## Output example

Total of 5 deprecation types with 24 occurrences

### Returning a hash from a #scope or #default_scope block is deprecated
-          1 Please return an actual scope object instead. E.g. scope :red, -> { where(color: 'red') } rather than scope :red, -> { { conditions: { color: 'red' } } }. (The scope was defined at /somewhere/pretend/app/models/pretend_source.rb:23.). (called from populate_for_frog at /somewhere/pretend/app/models/pretend_source.rb:39)
-          9 Please return an actual scope object instead. E.g. scope :red, -> { where(color: 'red') } rather than scope :red, -> { { conditions: { color: 'red' } } }. (The scope was defined at /somewhere/pretend/app/models/tremble.rb:19.). (called from block in new_xxx_trembles at /somewhere/pretend/app/models/tremble.rb:45)
-          2 Please return an actual scope object instead. E.g. scope :red, -> { where(color: 'red') } rather than scope :red, -> { { conditions: { color: 'red' } } }. (The scope was defined at /somewhere/pretend/app/models/download.rb:58.). (called from current_xxx_downloads at /somewhere/pretend/app/concerns/download_concerns.rb:172)
-          2 Please return an actual scope object instead. E.g. scope :red, -> { where(color: 'red') } rather than scope :red, -> { { conditions: { color: 'red' } } }. (The scope was defined at /somewhere/pretend/app/concerns/group_concerns.rb:63.). (called from current_xxx_downloads at /somewhere/pretend/app/concerns/download_concerns.rb:173)

### Relation#all is deprecated
-          1 If you want to eager-load a relation, you can call #load (e.g. `Post.where(published: true).load`). If you want to get an array of records from a relation, you can call #to_a (e.g. `Post.where(published: true).to_a`). (called from populate_for_frog at /somewhere/pretend/app/models/pretend_source.rb:39)
-          2 If you want to eager-load a relation, you can call #load (e.g. `Post.where(published: true).load`). If you want to get an array of records from a relation, you can call #to_a (e.g. `Post.where(published: true).to_a`). (called from xxx_items at /somewhere/pretend/app/models/xxx.rb:769)
-          1 If you want to eager-load a relation, you can call #load (e.g. `Post.where(published: true).load`). If you want to get an array of records from a relation, you can call #to_a (e.g. `Post.where(published: true).to_a`). (called from all_data at /somewhere/pretend/app/models/xxx/code_key31.rb:62)
-          1 If you want to eager-load a relation, you can call #load (e.g. `Post.where(published: true).load`). If you want to get an array of records from a relation, you can call #to_a (e.g. `Post.where(published: true).to_a`). (called from all_data at /somewhere/pretend/app/models/xxx/code_key888.rb:13)

### Relation#first with finder options is deprecated
-          2 Please build a scope and then call #first on it instead. (called from find_by_user at /somewhere/pretend/app/models/follower.rb:37)

### Relation#update_all with conditions is deprecated
-          2 Please use Item.where(color: 'red').update_all(...) rather than Item.update_all(..., color: 'red'). (called from mark_as_viewed! at /somewhere/pretend/app/models/xxx.rb:692)

### Passing the prompt to grouped_options_for_select as an argument is deprecated
-          1 Please use an options hash like `{ prompt: " " }`. (called from xxx_code_14_select_tag at /somewhere/pretend/app/helpers/xxx_helper.rb:22)


## License

Copyright (c) 2018 - Hint Media, Inc.

MIT License

https://github.com/hintmedia/depralyzer/blob/master/LICENSE.txt

