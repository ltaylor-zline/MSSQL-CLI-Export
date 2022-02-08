var exampleSocket = new WebSocket("ws://localhost:13254");
exampleSocket.onmessage = function (event) {
  if(event.data === 'Running') {
    console.log('Connected to server')
  }
  else if(event.data === 'Refresh') {
    window.location.reload();
  }
}