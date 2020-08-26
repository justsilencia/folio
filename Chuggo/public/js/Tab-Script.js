//Script for tabs.
// $('.tab-list').each(function() {
//     var $this = $(this);
//     var $tab = $this.find('li.home-tab-active')
//     var $link = $tab.find('a');
//     var $panel = $($link.attr('href'));
    
//     $this.on('click', '.home-tab-control', function(e) {
//         e.preventDefault();
//         var $link = $(this);
//         var id = this.hash;
        
//         if (id && !$link.parent().is('.home-tab-active')) {
//             $panel.removeClass('active');
//             $tab.removeClass('home-tab-active');

//             $panel = $(id).addClass('active');
//             $tab = $link.parent().addClass('home-tab-active');
//         }
//     });
// });