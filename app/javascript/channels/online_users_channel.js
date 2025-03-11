import consumer from "channels/consumer"

consumer.subscriptions.create("OnlineUsersChannel", {
  connected() {
    console.log("Connected to OnlineStatusChannel")
  },

  disconnected() {
    console.log("Disconnected from OnlineStatusChannel")
  },

  received(data) {
    console.log("Received data:", data)
  }
});
