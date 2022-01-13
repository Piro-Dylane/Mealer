// yarn add jquery
import $ from 'jquery';

const initRoulette = () => {
  const rouletteDiv = document.querySelector('#roulette');
  if (rouletteDiv) {
    const selectedIndex =
      Number(document.querySelector('#roulette').dataset.selectedIndex); // => entre 0 et nb de members

    // console.log(selectedIndex);
    const elementsCount = document.querySelectorAll(".list li").length;
    // console.log(elementsCount);

    for (let i = 0; i < 2; i++) {
      $(".list li").clone().appendTo(".list");
    }

    const firstListEls = document.querySelectorAll(".list:first-of-type li").length
    // console.log(firstListEls);
    var selectedRank = firstListEls - elementsCount + selectedIndex;
    // console.log(selectedRank);
      $('.button').click(function () {
        $('.window').css({
          right: "0"
        })
        $('.list li').css({
          border: '4px solid transparent'
        })
        function selfRandom(min, max) {
          return Math.floor(Math.random() * (max - min + 1)) + min;
        }
        // var selectedRank = 10 *  elementsCount + selectedIndex

        $('.window').animate({
          right: ((selectedRank * 130) + (selectedRank * 8 - 12) - 119)
        }, 3000);

        $('.list li:eq(' + selectedRank + ')').css({
          border: '4px solid #ffa606',
          borderRadius: '50%'
        })
      });
  };
}


export { initRoulette };
