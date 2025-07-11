import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<String> images = [
    "https://m.media-amazon.com/images/I/61XHTkbc2yL._UY1000_.jpg",
    "https://genietravel.com/cdn/shop/files/45DegreeAngle2_a8ae371a-570d-4adc-8d96-b2be68eeb941_1200x.jpg?v=1737023346",
    "https://www.intelligentchange.com/cdn/shop/products/4X5-WebRes-Intelligent-Change-Tote-Bags-1_301b012d-03b9-4917-96ff-e911c5783d56.jpg?v=1671127106&width=1120",
    "https://hips.hearstapps.com/hmg-prod/images/guest-wears-light-grey-shorts-and-dior-bag-during-day-three-news-photo-1748542354.pjpeg?crop=1.00xw:0.666xh;0,0.0119xh&resize=640:*",
    "https://www.shutterstock.com/image-photo/portrait-stylish-young-woman-suit-260nw-2479904535.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPcoL5dkkxxbDUCePdmBq4piOJoJtIhZvyzQ&s",
    "https://pyxis.nymag.com/v1/imgs/cc4/f08/c743998722445299eaf0c48383fb93d60e-mya-x-cuyana.rvertical.w570.jpg",
    "https://a.storyblok.com/f/165154/1500x700/fb1d8485bc/1_hero-image.jpg/m/",
    "https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg",
    "https://img.freepik.com/free-photo/bag-hanging-from-furniture-item-indoors_23-2151073506.jpg?semt=ais_hybrid&w=740",
    "https://www.lancaster.com/cdn/shop/collections/PE21-P3-CATEGORIE-HOMME-3_87c40fae-c69c-4a7f-b428-f5015c719443.jpg?v=1729062596",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSwprT18Ffch4HX2TAgSyqtJHXGklX5v9ndA&s",
    "https://static-01.daraz.pk/p/7fedb40acdacc1f5828cc5433be85cd7.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN4u_0UE9M-evt4-UybXJqPpgL4goJJXqAXOr1lvLbVjKyAnXPNl3S2HyrghVyyOVcTaI&usqp=CAU",
    "https://images-cdn.a.ubuy.com.kw/6351dd691ba7ce792739867c-zmqn-luxury-handbags-women-bag-designer.jpg",
  ];
  List<String> title = [
    "Urban Street Style Bag",
    "Everyday Essentials Tote",
    "Luxury Evening Bag",
    "Casual Canvas Backpack",
    "Premium Gold Chain Purse",
    "Boho Woven Shoulder Bag",
    "Classic Black Clutch",
    "Chic Mini Handbag",
    "Vintage Crossbody Bag",
    "Elegant Leather Tote",
  ];
  List<String> des = [
    "Sophisticated croc pattern and sturdy build give this handbag a luxury edge.",
    "A feminine choice with a soft satin finish and oversized bow — elegance with a playful twist.",
    "Refined and radiant, featuring a slim silhouette and shining gold chain strap for a classy finish.",
    "A timeless classic with quilted stitching and gold-tone accents — elegance in every detail.",
    "Graceful and glamorous, this satin clutch with pearl details adds a refined touch to evening outfits.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Products"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.network(
                      "https://eg.okhtein.com/cdn/shop/files/18-20.png?v=1737032460",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Image.network(
                    width: 200,
                    height: 200,
                    "https://static.thcdn.com/widgets/107-en/36/original-0414_984273_LUX_MF_MyBags_Banners_5_Email_580x600-121436.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    width: 200,
                    height: 200,
                    "https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/33/304999/1.jpg?1791",
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    width: 200,
                    height: 200,
                    "https://shop.wwf.org.uk/cdn/shop/collections/bags.jpg?v=1721302089&width=1890",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "find your fav item",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.65),
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Column(
                        children: [
                          Image.network(
                            images[index],
                            width: 200,
                            height: 210,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            title[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                SnackBar snackBar = const SnackBar(
                                    content: Text("item added to card"));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: const Icon(
                                Icons.shopping_cart,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
            const Text(
              "Hot Offers",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      images[index + 9],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        des[index],
                        style: const TextStyle(fontSize: 14),
                        softWrap: true,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
