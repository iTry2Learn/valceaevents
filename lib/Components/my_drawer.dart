import 'package:flutter/material.dart';
import 'package:valceaapp/Auth/login_or_register.dart';
import 'package:valceaapp/Components/my_drawer_tile.dart';
import 'package:valceaapp/Pages/events_pages.dart';
import 'package:valceaapp/Pages/home_page.dart';
import 'package:valceaapp/Pages/invitations_page.dart';
import 'package:valceaapp/Pages/locations_pages.dart';
import 'package:valceaapp/Pages/others_page.dart';
import 'package:valceaapp/Pages/promotions_page.dart';
import 'package:valceaapp/Pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 229, 233, 233),
      child: Column(
        children: [
          // app logo
          const SizedBox(height: 50),
          Icon(Icons.account_circle, size: 50, color: Colors.grey[700]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Divider(color: Colors.grey[700]),
          ),

          // pagina principala
          MyDrawerTile(
            text: 'Pagina principală',
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),

          // invitatii
          MyDrawerTile(
            text: 'Invitații',
            icon: Icons.mail,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InvitationsPage(),
                ),
              );
            },
          ),

          // plicuri
          MyDrawerTile(
            text: 'Evenimente',
            icon: Icons.event,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      EvenimentePage(), // Replace with EvenimentePage()
                ),
              );
            },
          ),

          // locatii partenere
          MyDrawerTile(
            text: 'Locații partenere',
            icon: Icons.location_on,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      LocatiiPage(), // Replace with LocatiiPage()
                ),
              );
            },
          ),

          // sigilii
          MyDrawerTile(
            text: 'Altele',
            icon: Icons.star_outline_sharp,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      OthersPage(), // Replace with OthersPage()
                ),
              );
            },
          ),

          // promotii
          MyDrawerTile(
            text: 'Promoții',
            icon: Icons.local_offer,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PromotionsPage(), // Replace with PromoțiiPage()
                ),
              );
            },
          ),

          // setari
          MyDrawerTile(
            text: 'Setări',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SettingsPage(), // Replace with SetăriPage()
                ),
              );
            },
          ),

          const Spacer(),
          // logout
          MyDrawerTile(
            text: 'Deconectare',
            icon: Icons.logout,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      LoginOrRegister(), // Replace with actual logout functionality
                ),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
