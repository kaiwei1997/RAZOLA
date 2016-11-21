using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RAZOLA
{
    public class ShoppingCart
    {
        private List<CartItem> _cart;
        public ShoppingCart()
        {
            _cart = new List<CartItem>();
        }
        public List<CartItem> GetItems()
        {
            return _cart;
        }
        public void AddItem(string id, string name, decimal price)
        {
            bool itemFound = false;
            foreach (CartItem item in _cart)
            {
                if (item.ID == id)
                {
                    item.Quantity += 1;
                    itemFound = true;
                }
            }
            if (!itemFound)
            {
                CartItem item =
                new CartItem(id, name, price, 1);
                _cart.Add(item);
            }
        }
        public void UpdateQuantity(int index, int quantity)
        {
            CartItem item = _cart[index];
            item.Quantity = quantity;
        }
        public void DeleteItem(int index)
        {
            _cart.RemoveAt(index);
        }
    }
}