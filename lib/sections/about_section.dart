import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height, // Full viewport height
      width: double.infinity,
      color: Color(0xFF121212), // Dark theme background
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left Side Text
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, I am",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "VEERAPANDI.J",
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Software Developer",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF8A2BE2), // Luxury purple
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "A passionate software developer with a strong foundation in Java, system design, and UI/UX principles. I specialize in crafting efficient, scalable, and user-centric solutions, blending technical expertise with creative problem-solving. My skills extend beyond coding—I have a keen eye for design, an analytical mindset for debugging, and a strategic approach to prompting and AI-driven technologies. Always eager to explore new advancements, I thrive on building innovative solutions that push the boundaries of technology.",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white70,
                        height: 1.6,
                      ),
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF8A2BE2),
                        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Check Resume",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              // Right Side Image
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF8A2BE2), width: 4),
                      image: DecorationImage(
                        image: AssetImage("assets/profile.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
