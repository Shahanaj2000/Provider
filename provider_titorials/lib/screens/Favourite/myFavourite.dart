import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favouriteProvider.dart';


class MyFavouriteItem extends StatefulWidget {
  const MyFavouriteItem({super.key});

  @override
  State<MyFavouriteItem> createState() => _MyFavouriteItemState();
}

class _MyFavouriteItemState extends State<MyFavouriteItem> {
  @override
   Widget build(BuildContext context) {
    final myFav = Provider.of<FavouriteItemProvider>(context);
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyFavouriteItem()));
            },
            icon: const Icon(Icons.favorite),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: myFav.selectedItem.length,
              itemBuilder: (context, index) {
                return Consumer<FavouriteItemProvider>(
                    builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.selectedItem.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }
                    },
                    leading: Text('Item' + index.toString()),
                    trailing: value.selectedItem.contains(index)
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border_outlined),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
   }
}