module.exports = {
    getParams(req, params) {
        return Object.assign({}, {
            menus: req.menus,
            user: req.session.user
        }, params)
    },

    getMenus(req) {
        let menus = [
            {
                text: 'Tela Inicial',
                href: '/admin/',
                icon: 'home',
                active: false
            },

            {
                text: 'Banners',
                href: '/admin/banners',
                icon: 'image',
                active: false  
            },

            {
                text: 'Notícias',
                href: '/admin/noticias',
                icon: 'newspaper-o',
                active: false  
            },

            {
                text: 'Usuários',
                href: '/admin/users',
                icon: 'users',
                active: false
            },

            {
                text: 'E-mails',
                href: '/admin/emails',
                icon: 'envelope',
                active: false
            }
        ];

        menus.map(menu => {
            if(menu.href === `/admin${req.url}`) menu.active = true;
        });

        return menus;
    }
}