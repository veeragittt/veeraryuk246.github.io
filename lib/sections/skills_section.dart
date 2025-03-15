import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height, // Full viewport height
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Skills",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Here are some of my skills that I have learned.",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSkillBox("Tech", [
                "figma.png",
                "java.png",
                "flutter.png",
                "uiux.png",
                "sql.png",
                "python.png"
              ], [
                "Figma",
                "Java",
                "Flutter",
                "UI/UX",
                "SQL",
                "Python"
              ]),
              SizedBox(width: 30),
              _buildSkillBox("Others", [
                "git.png",
                "github.png",
                "netlify.png",
                "vscode.png",
                "chrome.png"
              ], [
                "Git",
                "GitHub",
                "Netlify",
                "VS Code",
                "Chrome DevTools"
              ]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillBox(String title, List<String> icons, List<String> labels) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              alignment: WrapAlignment.center,
              children: List.generate(icons.length, (index) {
                return _buildSkillItem(icons[index], labels[index]);
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillItem(String iconPath, String label) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/$iconPath',
            width: 35,
            height: 35,
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.error,
              color: Colors.red,
            ),
          ),
          SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
