# Ruboty::SearchPlugin

An Ruboty Handler + Actions to output ruboty plugin search result.

[![Gem Version](https://badge.fury.io/rb/ruboty-search_plugin.svg)](http://badge.fury.io/rb/ruboty-search_plugin)

[Ruboty](https://github.com/r7kamura/ruboty) is Chat bot framework. Ruby + Bot = Ruboty

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-search_plugin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-search_plugin


## Commands

|Command|Pattern|Description|
|:--|:--|:--|
|[info](#info)|/search_plugin info (?&lt;gem_name&gt;.+)\z/|get ruboty-plugin info|
|[random](#random)|/search_plugin random\z/|get ruboty-plugin info at random|
|[ranking](#ranking)|/search_plugin ranking (?&lt;limit&gt;\d+)\z/|get ruboty-plugin ranking|
|[author_ranking](#author_ranking)|/search_plugin author_ranking (?&lt;limit&gt;\d+)\z/|get ruboty-plugin author_ranking|

## Usage
### info
* get ruboty-plugin info

~~~
>ruboty search_plugin info ruboty-megen
>name:ruboty-megen
>desc:ruboty-megen generate ruboty README.md template.
>downloads:378
>rubygems_uri:http://rubygems.org/gems/ruboty-megen
>homepage_uri:https://github.com/tbpgr/ruboty-megen
~~~

### random
* get ruboty-plugin info at random

~~~
>ruboty search_plugin random
>name:ruboty-attendance
>desc:System of attendance by ruboty.
>downloads:345
>rubygems_uri:http://rubygems.org/gems/ruboty-attendance
>homepage_uri:
>
>ruboty search_plugin random
>name:ruboty-gcal
>desc:Google Calendar API Wrapper for ruboty
>downloads:128
>rubygems_uri:http://rubygems.org/gems/ruboty-gcal
>homepage_uri:https://github.com/nekova/ruboty-gcal
~~~

### ranking
* get ruboty-plugin ranking

~~~
>ruboty search_plugin ranking 3
>no:1,name:ruboty-redis,downloads:881
>no:2,name:ruboty-lgtm,downloads:836
>no:3,name:ruboty-twitter,downloads:634
~~~

### author_ranking
* get ruboty-plugin author_ranking

~~~
>ruboty search_plugin author_ranking 3
>no:1,author:block_given?,downloads:4674
>no:2,author:Ryo Nakamura,downloads:2021
>no:3,author:negipo,downloads:836
~~~

## ENV

|Name|Description|
|:--|:--|
|--|--|

## Dependency

|Name|Description|
|:--|:--|
|ruboty-sonar gem|<i class="fa fa-github-square" style="font-size:1em;"></i> [ruboty-sonar gem](https://github.com/tbpgr/ruboty-sonar)|

## Contributing

1. Fork it ( https://github.com/tbpgr/ruboty-search_plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
