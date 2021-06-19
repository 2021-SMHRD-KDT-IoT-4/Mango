// to get current year
function getYear() {
    var currentDate = new Date();
    var currentYear = currentDate.getFullYear();
    document.querySelector("#displayYear").innerHTML = currentYear;
}

getYear();

// owl carousel 

$('.owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    autoplay: true,
    autoplayHoverPause: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 3
        },
        1000: {
            items: 6
        }
    }
})

   // 전체코드
/* const modalOpenBtn = document.getElementById('modal_open');
 const modal = document.querySelector('.modal');
 const overlayModal = modal.querySelector('.modal__overlay');
 const modalCloseBtn = modal.querySelector('button');
 const HIDDEN = "hidden";

 function closeModal() {
  modal.setAttribute("style","display:none");
     modal.classList.add(HIDDEN);    
 }

 function openModal() {
     modal.setAttribute("style","display:block");
     modal.classList.remove(HIDDEN);
 } 

 overlayModal.addEventListener('click',closeModal);
 modalCloseBtn.addEventListener('click',closeModal);
 modalOpenBtn.addEventListener('click',openModal);*/
