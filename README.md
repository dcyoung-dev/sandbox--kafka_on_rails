# Requirements
- asdf for Ruby and Node
- Kafka setup locally
  - brew install kafka
  - brew services start zookeeper
  - brew services start kafka

# What works
1. Create an Order through the form
   1. The controller fires a `order_created` event with the order params
   2. A consumer of `order_created` updates the Order with the params

# Notes
- Consumers are defined in `config/phobos.yml` under the `listeners` key