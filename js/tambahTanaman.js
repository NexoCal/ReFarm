document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('form');
  
    form.addEventListener('submit', async (event) => {
      event.preventDefault();
  
      const formData = new FormData(form);
  
      const data = {};
      formData.forEach((value, key) => {
        data[key] = value;
      });
  
      try {
        const response = await fetch('add_plant.php', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(data),
        });
  
        if (response.ok) {
          alert('Tanaman berhasil ditambahkan');
          form.reset();
        } else {
          alert('Terjadi kesalahan saat menambahkan tanaman');
        }
      } catch (error) {
        console.error('Error:', error);
        alert('Terjadi kesalahan saat menambahkan tanaman');
      }
    });
  });
  