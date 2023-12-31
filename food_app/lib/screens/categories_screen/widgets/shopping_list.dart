List cartItems = [];
List favitem = [];
var ShoppingList = [
  {
    "id": 1,
    "title": "Fjallraven - Foldsack No. 1 Backpack,Laptop",
    "price": 109.95,
    "description":
        "Your perfect pack for everyday use and walks in the forest.",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "rating": 3.9,
    "count": 120,
    "isfav": false,
  },
  {
    "id": 2,
    "title": "Mens Casual Premium Slim Fit T-Shirts ",
    "price": 22.3,
    "description": "Slim-fitting style, contrast raglan long sleeve.",
    "category": "men's clothing",
    "image":
        "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    "rating": 4.1,
    "count": 259,
    "isfav": false,
  },
  {
    "id": 3,
    "title": "Mens Cotton Jacket",
    "price": 55.99,
    "description": "great outerwear jackets for Spring/Autumn/Winter.",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    "rating": 4.7,
    "count": 500,
    "isfav": false,
  },
  {
    "id": 4,
    "title": "Mens Casual Slim Fit",
    "price": 15.99,
    "description":
        "The color could be slightly different between on the screen.",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg",
    "rating": 2.1,
    "count": 430,
    "isfav": false,
  },
  {
    "id": 5,
    "title": "John Hardy Women's Legends Naga Gold.",
    "price": 695,
    "description": "From our Legends Collection.",
    "category": "jewelery",
    "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    "rating": 4.6,
    "count": 400,
    "isfav": false,
  },
  {
    "id": 6,
    "title": "Solid Gold Petite Micropave ",
    "price": 168,
    "description": "Satisfaction Guaranteed.",
    "category": "jewelery",
    "image": "https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg",
    "rating": 3.9,
    "count": 70,
    "isfav": false,
  },
  {
    "id": 7,
    "title": "White Gold Plated Princess",
    "price": 9.99,
    "description": "Classic Created Wedding Engagement Solitaire Diamond.",
    "category": "jewelery",
    "image": "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg",
    "rating": 3,
    "count": 400,
    "isfav": false,
  },
  {
    "id": 8,
    "title": "Pierced Owl Rose Gold Plated",
    "price": 10.99,
    "description": "Rose Gold Plated Double Flared Tunnel Plug Earrings.",
    "category": "jewelery",
    "image": "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
    "rating": 1.9,
    "count": 100,
    "isfav": false,
  },
  {
    "id": 9,
    "title": "WD 2TB Elements Portable",
    "price": 64,
    "description": "USB 3.0 and USB 2.0 Compatibility Fast data transfers.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
    "rating": 3.3,
    "count": 203,
    "isfav": false,
  },
  {
    "id": 10,
    "title": "SanDisk SSD PLUS 1TB Internal",
    "price": 109,
    "description":
        "Easy upgrade for faster boot up, shutdown, application load and response.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg",
    "rating": 2.9,
    "count": 470,
    "isfav": false,
  },
  {
    "id": 11,
    "title": "Silicon Power 256GB SSD 3D NAND.",
    "price": 109,
    "description": "3D NAND flash are applied to deliver high transfer speeds.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg",
    "rating": 4.8,
    "count": 319,
    "isfav": false,
  },
  {
    "id": 12,
    "title": "WD 4TB Gaming Drive.",
    "price": 114,
    "description":
        "Expand your PS4 gaming experience, Play anywhere Fast and easy.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg",
    "rating": 4.8,
    "count": 400,
    "isfav": false,
  },
  {
    "id": 13,
    "title": "Acer SB220Q bi 21.5 inches Full HD",
    "price": 599,
    "description": "21. 5 inches Full HD (1920 x 1080) widescreen.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg",
    "rating": 2.9,
    "count": 250,
    "isfav": false,
  },
  {
    "id": 14,
    "title": "Samsung 49-Inch Curved Gaming Monitor.",
    "price": 999.99,
    "description": "49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg",
    "rating": 2.2,
    "count": 140,
    "isfav": false,
  },
  {
    "id": 15,
    "title": "BIYLACLESEN Women's 3-in-1 Coats",
    "price": 56.99,
    "description": "Note:The Jackets is US standard size.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg",
    "rating": 2.6,
    "count": 235,
    "isfav": false,
  },
  {
    "id": 16,
    "title": "Lock and Love Hoodie",
    "price": 29.95,
    "description": "100% POLYURETHANE(shell) 100% POLYESTER(lining).",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
    "rating": 2.9,
    "count": 340,
    "isfav": false,
  },
  {
    "id": 17,
    "title": "Rain Jacket Women Raincoats",
    "price": 39.99,
    "description": "Lightweight perfet for trip or casual wear.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg",
    "rating": 3.8,
    "count": 679,
    "isfav": false,
  },
  {
    "id": 18,
    "title": "MBJ Women's Solid Short Sleeve.",
    "price": 9.85,
    "description": "95% RAYON 5% SPANDEX, Made in USA or Imported.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg",
    "rating": 4.7,
    "count": 130,
    "isfav": false,
  },
  {
    "id": 19,
    "title": "Opna Women's Short Sleeve Moisture.",
    "price": 7.95,
    "description":
        "100% Polyester, Machine wash, 100% cationic polyester interlock.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg",
    "rating": 4.5,
    "count": 146,
    "isfav": false,
  },
  {
    "id": 20,
    "title": "DANVOUY Womens T Shirt Casual short",
    "price": 12.99,
    "description":
        "95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg",
    "rating": 3.6,
    "count": 145,
    "isfav": false,
  }
];

var categoriesList = [
  {
    "title": "Foldsack No.1 Backpack",
    "description":
        "Your perfect pack for everyday use and walks in the forest.",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
  },
  {
    "title": "Womens T-Shirt Casual Short",
    "description":
        "95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg",
  },
  {
    "title": "Samsung 49-Inch Gaming Monitor. ",
    "description": "49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg",
  },
  {
    "title": "Owl Rose Gold Plated",
    "description": "Rose Gold Plated Double Flared Tunnel Plug Earrings.",
    "category": "jewelery",
    "image": "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
  },
];
