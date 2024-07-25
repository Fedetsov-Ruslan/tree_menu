function toggleMenu(id) {
    const submenu = document.getElementById(`menu-${id}`);
    if (submenu) {
        submenu.classList.toggle('active');
        const icon = submenu.previousElementSibling.querySelector('.icon');
        if (icon) {
            icon.textContent = submenu.classList.contains('active') ? '-' : '+';
        }
    }
}
