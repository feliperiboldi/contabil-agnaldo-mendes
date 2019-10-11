CKEDITOR.on('instanceReady', () => {
    $.each(CKEDITOR.instances, (instance) => {
        CKEDITOR.instances[instance].on('change', (e) => {
            for(instance in CKEDITOR.instances) {
                CKEDITOR.instances[instance].updateElement();
            }
        });
    });
});