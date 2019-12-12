import "bootstrap";
import { initFavorite } from '../plugins/favorite';
import { initLike } from '../plugins/favorite';

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
