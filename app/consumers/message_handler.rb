class MessageHandler
  include Phobos::Handler

  def consume(payload, metadata)
    payload = JSON.parse(payload)
    order = Order.find(payload["order"]["id"])
    order.update(payload["order_params"])
  end
end