import WebSocket from 'ws';

var conn = process.env.CONN;

if(conn=="" || conn==undefined){
  conn="ws://127.0.0.1:8080";
}

const ws = new WebSocket(conn);

ws.on('error', console.error);

ws.on('open', function open() {
  setInterval(function timeout() {
    ws.send(Date.now());
  }, 500);
});
