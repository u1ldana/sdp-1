function addToCart(id, name, price) {
      
      let cart = JSON.parse(localStorage.getItem('cart')) || [];
      
      let product = cart.find(item => item.id === id);
      if (product) {
          product.quantity += 1;  
      } else {
          cart.push({ id, name, price, quantity: 1 });  
      }
      
      localStorage.setItem('cart', JSON.stringify(cart));
      alert(name + " has been added to your cart!");
  }




  

  
