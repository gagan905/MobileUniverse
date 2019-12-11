using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MobileUniverse
{
    public partial class Mobiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ViewPage(object sender, EventArgs e)
        {
            Button btn = (sender as Button);
            string id = btn.CommandArgument;
            Response.Redirect("~/MobileView.aspx?id=" + id);

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Button btn = (Button)sender;
                switch (btn.CommandName)
                {
                    case "addCart":
                        Product selectedProduct = GetSelectedProduct();
                        CartItemList cart = CartItemList.GetCart();
                        CartItem cartItem = cart[selectedProduct.Id];

                        if (cartItem == null)
                        {
                            cart.AddItem(selectedProduct);
                        }
                        Response.Redirect("Cart.aspx");
                        break;
                }

            }
        }

        private Product GetSelectedProduct()
        {
            // get row from SqlDataSource based on value in dropdownlist
            DataView productsTable = (DataView)
                MobilesList.Select(DataSourceSelectArguments.Empty);
            DataRowView row = productsTable[0];

            // create a new product object and load with data from row
            Product p = new Product();
            p.Id = row["Id"].ToString();
            p.mobile_name = row["mobile_name"].ToString();
            p.brand = row["brand"].ToString();
            p.features = row["features"].ToString();
            p.price = (decimal)row["price"];
            p.image = row["image"].ToString();
            return p;
        }
    }
}