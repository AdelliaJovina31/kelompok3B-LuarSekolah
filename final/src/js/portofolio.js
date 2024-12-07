document.addEventListener('DOMContentLoaded', () => {
  const buttons = document.querySelectorAll('.filter-btn');
  const portfolioGrid = document.querySelector('.portfolio-grid');

  // Fungsi untuk memuat data berdasarkan filter
  const loadPortfolios = (filter) => {
      const url = filter === 'all' 
          ? './src/backend/getPortofolio.php' 
          : `./src/backend/getPortofolio.php?filter=${filter}`;

      fetch(url)
          .then(response => response.json())
          .then(data => {
              if (data.success) {
                  portfolioGrid.innerHTML = ''; // Kosongkan grid
                  data.portfolios.forEach(item => {
                    if (item.okupasi) {
                      const okupasiClass = item.okupasi.toLowerCase().replace(/\s+/g, '-').replace(/\//g, '-');
                      console.log("Okupasi Class:", okupasiClass);
                    } else {
                        console.warn("Okupasi kosong atau null:", item);
                    }

                      portfolioGrid.innerHTML += `
                          <div class="portfolio-item ${item.okupasi.toLowerCase().replace(/\s+/g, '-').replace(/\//g, '-')}">
                              <img src="./src/images/portofolio/${item.gambar}" alt="${item.judul}" />
                              <div class="portfolio-info">
                                  <h3>${item.judul}</h3>
                                  <p>${item.nama} | <span>${item.okupasi}</span></p>
                                  <div class="icons">
                                      <span>
                                          <a target="_blank" href="${item.google_drive}">
                                              <img src="src/images/drive_port.png" alt="GDrive Icon"></a>
                                      </span>
                                      <span>
                                          <a target="_blank" href="${item.linkedin}">
                                              <img src="src/images/linkedin_port.png" alt="LinkedIn Icon"></a>
                                      </span>
                                  </div>
                              </div>
                          </div>
                      `;
                  });
              } else {
                  portfolioGrid.innerHTML = '<p>Data tidak ditemukan.</p>';
              }
          })
          .catch(error => console.error('Error:', error));
  };

  // Event listener untuk tombol filter
  buttons.forEach(button => {
      button.addEventListener('click', () => {
          // Hapus kelas aktif dari semua tombol
          buttons.forEach(btn => btn.classList.remove('active'));
          button.classList.add('active');

          // Ambil filter dari tombol
          const filter = button.getAttribute('data-filter');
          loadPortfolios(filter);

          console.log("Filter: ", filter)
      });
  });

  // Muat semua data saat pertama kali halaman dimuat
  loadPortfolios('all');
});