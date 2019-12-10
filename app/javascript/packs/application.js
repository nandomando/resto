import "bootstrap";
import { initFavorite } from '../plugins/favorite';
import { initLike } from '../plugins/favorite';


if (document.querySelector('.favorites')) {
  initFavorite();
}
if (document.querySelector('.favorites')) {

initLike();

}

document.querySelectorAll('.card-category').forEach((card) => {

  const liked = card.querySelector('.liked')
  liked.addEventListener('click', () => {
    card.style.display = 'none';
  })
})
