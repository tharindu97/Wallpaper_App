import 'package:flutter/material.dart';
import 'package:wallpaperapp/model/wallpaper_model.dart';

Widget brandName(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('wallpaper',style: TextStyle(color: Colors.black87),),
      Text('Hub',style: TextStyle(color: Colors.blue))
    ],
  );
}

Widget wallpapersList({List<WallpaperModel> wallpapers, context}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpapers){
        return GridTile(
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(wallpapers.src.portrait,fit: BoxFit.cover,)
              ),
          )
        );
      }).toList(),
    ),
  );
}