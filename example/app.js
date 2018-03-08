var Pyze = require('ti.pyze');

var win = Ti.UI.createWindow({
  backgroundColor: '#fff'
});

var btn = Ti.UI.createButton({
 title: 'Trigger'
});

btn.addEventListener('click', function() {
 Pyze.initialize('<my-api-key>'); // Add your API key
});

win.add(btn);
win.open();
