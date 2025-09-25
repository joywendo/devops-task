const text = "Welcome to my simple app!";
const typewriter = document.getElementById("typewriter");

let i = 0;
function typeEffect() {
  if (i < text.length) {
    typewriter.innerHTML += text.charAt(i);
    i++;
    setTimeout(typeEffect, 100);
  }
}
