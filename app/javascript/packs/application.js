import "bootstrap";
import { initFavorite } from '../plugins/favorite';
// import { qrcode } from '../plugins/favorite';
//import { initLike } from '../plugins/favorite';

if (document.querySelector('#qrResult')) {
  QRCode();

function QRCode () {
  var QRCode = require('qrcode')
  var canvas = document.getElementById('canvas')

  QRCode.toCanvas(canvas, "hola", function (error) {
    if (error) console.error(error)
    console.log('success!');
  })
}
}
// here starts the code for favorites

if (document.querySelector('.favorites')) {
  initFavorite();
}
// thats if i want to put another favorite function
// if (document.querySelector('.favorites2')) {

// initLike();

// }

document.querySelectorAll('.card-trip-dash').forEach((card) => {

  const liked = card.querySelector('.liked')
  liked.addEventListener('click', () => {
    card.style.display = 'none';
  })
});
