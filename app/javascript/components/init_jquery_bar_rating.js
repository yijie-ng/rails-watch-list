import $ from 'jquery';
import 'jquery-bar-rating';

const initJqueryBarRating = () => {
  $('#rating').barrating({
    theme: 'css-stars'
  });
};

export { initJqueryBarRating };
