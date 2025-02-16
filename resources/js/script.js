document.getElementById('image-picker').addEventListener('change', function (event) {
    event.preventDefault();
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function (e) {
            const preview = document.getElementById('image-preview');
            const placeholder = document.getElementById('image-placeholder');
            
            // Affiche l'image sélectionnée et masque l'icône
            preview.src = e.target.result;
            preview.classList.remove('hidden');
            placeholder.classList.add('hidden');
        };
        reader.readAsDataURL(file);
    }
});
