class MessageProducer
  include Phobos::Producer

  def publish(order:, order_params:)
    event = {
      order: order,
      order_params: order_params,
      timestamp: Time.current
    }.to_json

    producer.publish(topic: "order_created", payload: event)
  end
end