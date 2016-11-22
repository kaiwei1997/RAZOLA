using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RAZOLA
{
    public class CartItem
    {
        private string _id;
        private string _name;
        private decimal _price;
        private int _quantity;
        public CartItem()
        {
            this.ID = " ";
            this.Name = " ";
            this.Price = 0.0m;
            this.Quantity = 0;
        }
        public CartItem(string id, string name, decimal price, int quantity)
        {
            this.ID = id;
            this.Name = name;
            this.Price = price;
            this.Quantity = quantity;
        }
        public string ID
        {
            get
            {
                return _id;
            }
            set
            {
                _id = value;
            }
        }
        public string Name
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;
            }
        }
        public decimal Price
        {
            get
            {
                return _price;
            }
            set
            {
                _price = value;
            }
        }
        public int Quantity
        {
            get
            {
                return _quantity;
            }
            set
            {
                _quantity = value;
            }
        }
    }
}