import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: "E-Commerce",
      imageUrl: "https://uicookies.com/wp-content/uploads/2018/03/coloshop-free-bootstrap-ecommerce-website-templates.jpg",
    ),
    Project(
      title: "Website",
      imageUrl: "https://uicookies.com/wp-content/uploads/2019/11/Minishop.jpg",
    ),
    Project(
      title: "App",
      imageUrl: "https://static.vecteezy.com/system/resources/previews/004/946/982/original/online-banking-concept-onboarding-screens-for-mobile-app-templates-financial-transactions-at-bank-website-ui-ux-gui-user-interface-kit-with-people-scenes-for-web-design-illustration-vector.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; // Full viewport height

    return Container(
      height: screenHeight, // Ensure full section height
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40), // Proper spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Section Title
          Text(
            "Projects",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),

          // Declaration (Short Description)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Here are some of my featured projects showcasing my expertise in app development, website design, and e-commerce solutions.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),
          SizedBox(height: 20),

          // Project Cards
          Expanded(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: projects.map((project) => _buildProjectCard(project)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(Project project) {
    return Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Curved edges
        color: Colors.grey[900],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              project.imageUrl,
              width: 250,
              height: 290, // Image covers most of the card
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14), // 5mm padding
            child: Text(
              project.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Project {
  final String title;
  final String imageUrl;
  Project({required this.title, required this.imageUrl});
}
