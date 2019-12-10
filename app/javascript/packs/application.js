import "bootstrap";
import { initFavorite } from ‘../plugins/favorite’;
if (document.querySelector(‘.favorites’)) {
  initFavorite();
}
