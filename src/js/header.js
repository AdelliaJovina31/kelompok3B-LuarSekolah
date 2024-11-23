document.addEventListener('DOMContentLoaded', () => {
    const navbarMenu = document.querySelectorAll('.navbar-menu');

    navbarMenu.forEach((menu) => {
        const menuText = menu.querySelector('a');

        menu.addEventListener('mouseenter', () => {
            menu.style.backgroundColor = '#00CC99';
            menuText.style.color = 'white';
        });

        menu.addEventListener('mouseleave', () => {
            menu.style.backgroundColor = 'transparent';
            menuText.style.color = 'black';
        });
    });
    
    const hamburgerMenu = document.getElementById('hamburger-menu');
    const hamburgerMenuList = document.getElementById('not-pc-navbar');
    const closeSidebar = document.getElementById('close-icon');
    if (hamburgerMenu) {
        hamburgerMenu.addEventListener('click', (e) => {
            hamburgerMenuList.style.display = 'flex';
        });

        closeSidebar.addEventListener('click', (e) => {
            hamburgerMenuList.style.display = 'none';
        });
    }

    const sidebarMenu = document.querySelectorAll('.sidebar-menu');

    sidebarMenu.forEach((menu) => {
        const menuText = menu.querySelector('a');

        menu.addEventListener('mouseenter', () => {
            menuText.style.color = 'white';
        });

        menu.addEventListener('mouseleave', () => {
            menuText.style.color = 'black';
        });
    });

    const searchBar = document.getElementById('searchBar');

    searchBar.addEventListener('input', function() {
        const keyword = searchBar.value.toLocaleLowerCase();

        // Array.from(newsItems).forEach(function(item) {
        //     const title = item.querySelector('h4').textContent.toLocaleLowerCase();
        //     const description = item.querySelector('p').textContent.toLocaleLowerCase();

        //     // tampilkan berita kalau keyword ditemukan
        //     if(title.includes(keyword) || description.includes(keyword)) {
        //     item.style.display = '';
        //     } else {
        //     item.style.display = 'none';
        //     }
        // });
    });
});
