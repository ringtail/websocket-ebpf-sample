import WebSocket from 'ws';

var conn = process.env.CONN;

if(conn=="" || conn==undefined){
  conn="ws://127.0.0.1:8080";
}

const ws = new WebSocket(conn);

ws.on('error', console.error);

ws.on('open', function open() {
  const array = new Float32Array(5);

  var t = Math.random()*60*1000*10;

  setTimeout(function() {
    for (var i = 0; i < array.length; ++i) {
      array[i] = i / 2;
     }
    ws.send(array);
    ws.close();
  }, t);
});
