import $ from 'jquery';
import 'jquery-bar-rating';
import 'jquery-bar-rating/dist/themes/fontawesome-stars.css'

const initJqueryBarRating = () => {
  $('#rating').barrating({
    theme: 'fontawesome-stars'
  });
};

export { initJqueryBarRating };
