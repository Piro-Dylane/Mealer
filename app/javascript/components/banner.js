import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["What should I bring tomorrow?", "Everyone ok with pasta?", "Anyone allergic to strawberries?"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
