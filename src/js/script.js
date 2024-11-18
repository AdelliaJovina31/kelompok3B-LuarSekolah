document.addEventListener("DOMContentLoaded", function () {
    const dynamicText = document.getElementById("dynamic-text");
    const texts = [
        "Ilmu",
        "Event Terdekat",
        "Batch Terbaru",
        "Lowongan Pekerjaan"
    ];
    let textIndex = 0;
    let charIndex = 0;

    function typeEffect() {
        if (charIndex < texts[textIndex].length) {
            dynamicText.textContent += texts[textIndex].charAt(charIndex);
            charIndex++;
            setTimeout(typeEffect, 100);
        } else {
            setTimeout(deleteEffect, 1000);
        }
    }

    function deleteEffect() {
        if (charIndex > 0) {
            dynamicText.textContent = texts[textIndex].substring(0, charIndex - 1);
            charIndex--;
            setTimeout(deleteEffect, 50);
        } else {
            textIndex = (textIndex + 1) % texts.length;
            setTimeout(typeEffect, 500);
        }
    }

    typeEffect();
});
