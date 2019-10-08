(() => {
  console.log("hamburger");
  //menu

  let hamburgerMenu = document.querySelector(".hamburgerMenu");
  let mobileNav = document.querySelector(".mobile");
  let body = document.querySelector("body");

  // add event click for hamburger menu
  hamburgerMenu.addEventListener("click", function() {
    //toggle mobile nav
    mobileNav.classList.toggle("toggle");
    //exclude scrolling while opening nav bar
    body.classList.toggle("overflow");
  });

  //hide nav bar at the time being clicked
  mobileNav.addEventListener("click", function() {
    console.log("clicked");
    body.classList.remove("overflow");
    mobileNav.classList.toggle("toggle");
  });
})();
