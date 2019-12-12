import "bootstrap";
import { initFavorite } from '../plugins/favorite';
// import { qrcode } from '../plugins/favorite';
//import { initLike } from '../plugins/favorite';

if (document.querySelector('#qrResult')) {
  QRCode();

var QRCode = require('qrcode')
var canvas = document.getElementById('canvas')

QRCode.toCanvas(canvas, 'fernando', function (error) {
  if (error) console.error(error)
  console.log('success!');
})

}
// favorites

if (document.querySelector('.favorites')) {
  initFavorite();
}
// if (document.querySelector('.favorites2')) {

// initLike();

// }

document.querySelectorAll('.card-trip-dash').forEach((card) => {

  const liked = card.querySelector('.liked')
  liked.addEventListener('click', () => {
    card.style.display = 'none';
  })
});
