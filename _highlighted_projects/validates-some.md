---
title: validates_some
link: https://github.com/themetar/validates_some
link-verb: Get it
topics:
  - Ruby
  - gem
  - ActiveModel
  - Ruby on Rails
date: 2026-11-16
---
A [Ruby gem][rubygems] that adds an eponymous method to the ActiveModel validation API.

The `validates_some` method filters declared validations for the referenced attributes: It expects that just _some_ (at least one) of the listed attributes are valid for the whole group of attributes to be considered validated. That allows to have groups of attributes whithin which attributes can stand in for one another.

The use case that required this was a User object that can have a valid contact phone number, or a contact email address. In best case it could have both - and to have none should be forbidden - but having just one of them is enough and should be considered valid.

[rubygems]: https://rubygems.org/gems/validates_some
{% default_link_attributes %}
