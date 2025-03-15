// main.dart
import 'package:flutter/material.dart';
import 'sections/about_section.dart';
import 'sections/skills_section.dart';
import 'sections/visionary_section.dart';
import 'sections/projects_section.dart';
import 'sections/education_section.dart';
import 'sections/contact_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _visionaryKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Portfolio"),
        actions: [
          TextButton(onPressed: () => _scrollToSection(_aboutKey), child: Text("About", style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () => _scrollToSection(_skillsKey), child: Text("Skills", style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () => _scrollToSection(_visionaryKey), child: Text("Visionary", style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () => _scrollToSection(_projectsKey), child: Text("Projects", style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () => _scrollToSection(_educationKey), child: Text("Education", style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () => _scrollToSection(_contactKey), child: Text("Contact", style: TextStyle(color: Colors.white))),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(key: _aboutKey, child: AboutSection()),
            Container(key: _skillsKey, child: SkillsSection()),
            Container(key: _visionaryKey, child: VisionarySection()),
            Container(key: _projectsKey, child: ProjectsSection()),
            Container(key: _educationKey, child: EducationSection()),
            Container(key: _contactKey, child: ContactSection()),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () => _scrollToSection(_aboutKey), icon: Icon(Icons.person, color: Colors.purpleAccent)),
            IconButton(onPressed: () => _scrollToSection(_skillsKey), icon: Icon(Icons.build, color: Colors.purpleAccent)),
            IconButton(onPressed: () => _scrollToSection(_visionaryKey), icon: Icon(Icons.visibility, color: Colors.purpleAccent)),
            IconButton(onPressed: () => _scrollToSection(_projectsKey), icon: Icon(Icons.work, color: Colors.purpleAccent)),
            IconButton(onPressed: () => _scrollToSection(_educationKey), icon: Icon(Icons.school, color: Colors.purpleAccent)),
            IconButton(onPressed: () => _scrollToSection(_contactKey), icon: Icon(Icons.contact_mail, color: Colors.purpleAccent)),
          ],
        ),
      ),
    );
  }
}
