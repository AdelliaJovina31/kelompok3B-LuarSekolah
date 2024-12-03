document.addEventListener('DOMContentLoaded', () => {
    const navbarMenu = document.querySelectorAll('.navbar-menu');

    navbarMenu.forEach((menu) => {
        const menuText = menu.querySelector('a');

        menu.addEventListener('mouseenter', () => {
            menu.style.borderBottom = '2px solid #1BC89D';
            menuText.style.color = '#1BC89D';
        });

        menu.addEventListener('mouseleave', () => {
            menu.style.borderBottom = '2px solid transparent';
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

    const sidebarMenu = document.querySelectorAll('.sidebar .navbar-menu');

    sidebarMenu.forEach((menu) => {
        const menuText = menu.querySelector('a');

        menu.addEventListener('mouseenter', () => {
            menuText.style.color = '#1BC89D';
            menu.style.borderBottom = '2px solid #1BC89D';
        });

        menu.addEventListener('mouseleave', () => {
            menuText.style.color = 'black';
            menu.style.borderBottom = '2px solid transparent';
        });
    });
});