document.addEventListener("DOMContentLoaded", function () {
  const testimonialCards = document.getElementById("testimonialCards");
  const pageIndicator = document.getElementById("pageIndicator");
  const prevBtn = document.getElementById("prevBtn");
  const nextBtn = document.getElementById("nextBtn");

  // Ambil data dari getTestimoni.php
  fetch("./src/backend/getTestimoni.php")
    .then((response) => response.json())
    .then((data) => {
      if (data.success) {
        const testimonies = data.testimoniArr;
        let currentPage = 1;
        const cardsPerPage = 2;
        const totalPages = Math.ceil(testimonies.length / cardsPerPage);

        // Fungsi untuk render card
        function renderCards(page) {
          testimonialCards.innerHTML = ""; // Bersihkan elemen sebelumnya

          const start = (page - 1) * cardsPerPage;
          const end = start + cardsPerPage;

          // Tampilkan kartu untuk halaman ini
          testimonies.slice(start, end).forEach((testimoni) => {
            const card = document.createElement("div");
            card.classList.add("testimonial-card");

            card.innerHTML = `
              <div class="card-content">
                <div class="profile">
                  <div class="avatar"><img src="./src/images/${testimoni.foto}" alt="${testimoni.nama}"></div>
                  <div class="profile-info">
                    <h3>${testimoni.nama}</h3>
                    <p>${testimoni.okupasi}</p>
                  </div>
                </div>
                <p class="testimonial-text">${testimoni.deskripsi}</p>
              </div>

              <div class="overlay">
                <button onclick="window.open('${testimoni.linkedin}', '_blank')">Lihat Detail di LinkedIn</button>
              </div>
            `;
            testimonialCards.appendChild(card);
          });

          // Perbarui indikator halaman
          pageIndicator.textContent = `${page} dari ${totalPages}`;

          // Kalau page == 1, button prev disabled
          // Kalau di page terakhir, button next disabled
          prevBtn.disabled = page === 1;
          nextBtn.disabled = page === totalPages;
        }

        // Event listeners untuk navigasi slider
        prevBtn.addEventListener("click", () => {
          if (currentPage > 1) {
            currentPage--;
            renderCards(currentPage);
          }
        });

        nextBtn.addEventListener("click", () => {
          if (currentPage < totalPages) {
            currentPage++;
            renderCards(currentPage);
          }
        });

        // Render halaman pertama
        renderCards(currentPage);

        console.log('Filter:', filter); // Log filter yang dikirim
      } else {
        testimonialCards.innerHTML = "<p>Data tidak ditemukan</p>";
      }
    })
    .catch((error) => {
      console.error("Error fetching data:", error);
    });
});

