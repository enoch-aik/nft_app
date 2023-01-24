import 'package:flutter/material.dart';
import 'package:nft_app/screens/home/screen.dart';
import 'package:nft_app/screens/profile/screen.dart';
import 'package:nft_app/src/constants/assets.dart';

List<String> bottomNavIcons = [homeIcon, discoverIcon, cartIcon, profileIcon];

List<Widget> navScreens = const [
  HomeScreen(),HomeScreen(),
  HomeScreen(),
  ProfileScreen()
];
