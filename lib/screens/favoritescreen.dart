import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: 1, // Replace with your actual notification count
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDtd0soCSRdpo8Y5klekJdABh4emG2P29jwg&usqp=CAU',
                  ),
                ),
                title: Text(
                  'Shoobham', // Replace with the actual username
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Liked your post',
                  style: const TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.favorite, color: Colors.black),
                onTap: () {},
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.shareicon.net/download/2016/05/24/770139_man_512x512.png',
                  ),
                ),
                title: Text(
                  'Nitesh', // Replace with the actual username
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Liked your post',
                  style: const TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.favorite, color: Colors.black),
                onTap: () {},
              ),
            ],
          );
        },
      ),
    );
  }
}
