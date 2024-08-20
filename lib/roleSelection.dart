import 'package:flutter/material.dart';

class RoleSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'College Eventy',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontFamily: "CentraleSansRegular",
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Are you a User or an Admin?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                  fontFamily: "CentraleSansRegular",
                ),
              ),
              SizedBox(height: 30),
              _buildRoleButton(
                context,
                'User',
                Colors.purple,
                Colors.blue,
                '/user_login',
              ),
              SizedBox(height: 20),
              _buildRoleButton(
                context,
                'Admin',
                Colors.deepOrange,
                Colors.redAccent,
                '/admin_login',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoleButton(
    BuildContext context,
    String text,
    Color startColor,
    Color endColor,
    String routeName,
  ) {
    return Container(
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide.none,
        ).copyWith(
          elevation: ButtonStyleButton.allOrNull(0.0),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return Colors.transparent; // No background color
            },
          ),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
