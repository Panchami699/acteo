import 'package:flutter/material.dart';

class NotificationInNavigationBar extends StatelessWidget {
  const NotificationInNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notifications',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
//           child: GridView.count(
//             crossAxisCount: 1,
//           crossAxisSpacing: 4,
//           mainAxisSpacing: 4,
//           children:

//           )))
// }
// //List.generate is a constructor used to list a number of values
// //              List.generate(choices.length, (index) {
// //                   return Center(
// //                     child: SelectCard(choice: choices[index]),
// //                   );
// //                 }
// //                 )
// //                           )
// //         )
// //     );
// //   }
// // }

// // class Choice {
// //   const Choice({this.title, this.icon});
// //   final String? title;
// //   final IconData? icon;
// // }
// // const List<Choice> choices = const <Choice> [
// //   const Choice(title: 'Home', icon: Icons.home),
// //   const Choice(title: 'Contact', icon: Icons.contacts),
// //   const Choice(title: 'WiFi', icon: Icons.wifi),
// // ];

// // class SelectCard extends StatelessWidget {
// //   const SelectCard({Key? key, this.choice}) : super(key: key);
// //   final Choice? choice;
// //   final Icon? icons;

// //   @override
// //   Widget build(BuildContext context) {
//     //final TextStyle textStyle = Theme.of(context).textTheme.display1;
//     // return Card(
//     //     color: Colors.orange,
//     //     child: Center(child: Column(
//     //         crossAxisAlignment: CrossAxisAlignment.center,
//     //         children: <Widget>[
//     //           Expanded(child:
//     //           Icon( (choice.icon), size:50.0,
//     //            //style (TextStyle(color: Colors.green),),),
//     //           ),
//     //           Text(choice.title,),//style: textStyle),
//     //     ),
//     //     ]
//     //     ),
//     //     )
//     // );
// //   }
// // }

          child: ListView.separated(
            itemBuilder: (ctx, index) {
              return const ListTile(
                title: Text(
                  'Welcome to AcTeo App',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'Everything you need to know about our campus is here!!',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://www.kindpng.com/picc/m/169-1699400_svg-png-icon-free-android-notification-icon-png.png'),
                ),
              );
            },
            separatorBuilder: (ctx, index) {
              return const Divider();
            },
            itemCount: 1,
          ),
        ));
  }
}

//           // child: ListView(children: [
//           //   Text(
//           //     'Welcome to AcTeo App',
//           //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
//           //   ),
//           //   Text(
//           //     'Find everything you need to know about our campus here!!!',
//           //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
//           //   ),
//           //   Divider(
//           //     height: 200,
//           //     thickness: 15,
//           //     color: Colors.grey,
//           //   )
//           // ]),
//     // return Center(child: Text('Notification from the navigation bar'));
//     // return Scaffold(
//     //   body: SafeArea(
//     //     child: Text('profile page from the navigation bar'),
//     //   ),
//     // );












/**use this obtained from the flutter.dev for the futher operations in notifications
 * the code given is correct and only some modifications are needed to be made
 */

// import 'package:flutter/material.dart';

// class Product {
//   const Product({required this.name});

//   final String name;
// }

// typedef CartChangedCallback = Function(Product product, bool inCart);

// class ShoppingListItem extends StatelessWidget {
//   ShoppingListItem({
//     required this.product,
//     required this.inCart,
//     required this.onCartChanged,
//   }) : super(key: ObjectKey(product));

//   final Product product;
//   final bool inCart;
//   final CartChangedCallback onCartChanged;

//   Color _getColor(BuildContext context) {
//     // The theme depends on the BuildContext because different
//     // parts of the tree can have different themes.
//     // The BuildContext indicates where the build is
//     // taking place and therefore which theme to use.

//     return inCart //
//         ? Colors.black54
//         : Theme.of(context).primaryColor;
//   }

//   TextStyle? _getTextStyle(BuildContext context) {
//     if (!inCart) return null;

//     return const TextStyle(
//       color: Colors.black54,
//       decoration: TextDecoration.lineThrough,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: () {
//         onCartChanged(product, inCart);
//       },
//       leading: CircleAvatar(
//         backgroundColor: _getColor(context),
//         child: Text(product.name[0]),
//       ),
//       title: Text(
//         product.name,
//         style: _getTextStyle(context),
//       ),
//     );
//   }
// }

// class ShoppingList extends StatefulWidget {
//   const ShoppingList({required this.products, Key? key}) : super(key: key);

//   final List<Product> products;

//   // The framework calls createState the first time
//   // a widget appears at a given location in the tree.
//   // If the parent rebuilds and uses the same type of
//   // widget (with the same key), the framework re-uses
//   // the State object instead of creating a new State object.

//   @override
//   _ShoppingListState createState() => _ShoppingListState();
// }

// class _ShoppingListState extends State<ShoppingList> {
//   final _shoppingCart = <Product>{};

//   void _handleCartChanged(Product product, bool inCart) {
//     setState(() {
//       // When a user changes what's in the cart, you need
//       // to change _shoppingCart inside a setState call to
//       // trigger a rebuild.
//       // The framework then calls build, below,
//       // which updates the visual appearance of the app.

//       if (!inCart) {
//         _shoppingCart.add(product);
//       } else {
//         _shoppingCart.remove(product);
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shopping List'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         children: widget.products.map((Product product) {
//           return ShoppingListItem(
//             product: product,
//             inCart: _shoppingCart.contains(product),
//             onCartChanged: _handleCartChanged,
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MaterialApp(
//     title: 'Shopping App',
//     home: ShoppingList(
//       products: [
//         Product(name: 'Eggs'),
//         Product(name: 'Flour'),
//         Product(name: 'Chocolate chips'),
//       ],
//     ),
//   ));
// }