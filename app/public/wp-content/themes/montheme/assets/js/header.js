document.addEventListener('DOMContentLoaded', function() {
  const header = document.getElementById('header');

  if (header) {
      let scroll_to_top = document.documentElement.scrollTop;

      document.addEventListener('scroll', headerhide);

      function headerhide(e) {
          const scroll_actuel = document.documentElement.scrollTop;

          if (scroll_actuel > scroll_to_top) {
              console.log('scrol');
              header.style.transform = `translateY(-${header.scrollHeight}px)`;

          } else {
            header.style.transform = `translateY(0px )`;
          }

          scroll_to_top = document.documentElement.scrollTop;
      }
  } else {
      console.error('Element with class .header not found');
  }
});
