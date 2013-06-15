# xipio

[![Gem Version](https://badge.fury.io/rb/xipio.png)](http://badge.fury.io/rb/xipio)

Add xip.io support to your rails app in development mode.

## Description

When reading the subdomain of an xip.io request, you will get a different value
compared to a local pow request. The reason for this is that the tld length is
1 by default, but an xip.io request has a tld length of 6. This gem inserts a
middleware that corrects the tld length config of rails on the fly so that you
can use local and xip requests at the same time without restarting the server.

## Installation

Add this line to your application's Gemfile:

    gem 'xipio', group: :development

That's it! There's nothing to configure. It just works out of the box.

## Additional Information

### Maintainers

- Philipe Fatio ([@fphilipe](https://github.com/fphilipe))

### License

MIT License. Copyright 2013 Philipe Fatio
