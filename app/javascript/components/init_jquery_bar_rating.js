import $ from 'jquery';
import 'jquery-bar-rating';

const initJqueryBarRating = () => {
  $('#rating').barrating({
    theme: 'fontawesome-stars'
  });
};

export { initJqueryBarRating };
