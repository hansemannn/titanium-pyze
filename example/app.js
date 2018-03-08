var Pyze = require('ti.pyze');

var win = Ti.UI.createWindow({
  backgroundColor: '#fff'
});

var btn = Ti.UI.createButton({
 title: 'Initialize SDK',
 top: 100
});

btn.addEventListener('click', function() {
  // The Pyze SDK throws an error if you initialize although you are already
  try {
    Pyze.initialize('K19Icc0CRDa581g6mNXZUw');
  } catch(e) {
    Ti.API.info('Already initialized! Native message:');
    Ti.API.info(e.message);
  }
  btn2.enabled = true;
});

var btn2 = Ti.UI.createButton({
 title: 'Post Event',
 enabled: false,
 top: 150
});

btn2.addEventListener('click', function() {
 Pyze.postEvent('ti_rocks', { myKey: 'hello!' });
});

win.add(btn);
win.add(btn2);

win.open();
