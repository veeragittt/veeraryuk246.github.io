import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisionarySection extends StatelessWidget {
  const VisionarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.92,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Visionary',
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Launching My Career: A Fresh Perspective on Software Development',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 40),
          _buildContentBox(
            title: 'Personalization',
            content:
                "I believe that software development is more than just writing code—it's about creating solutions that enhance user experience and drive innovation. I tailor every project to meet specific needs, ensuring efficiency, scalability, and a seamless interface. Whether it's crafting robust backend logic, designing intuitive UI/UX, or integrating AI-driven functionalities, I approach each challenge with creativity and precision. My work is not just about completing tasks; it's about delivering impactful solutions that make a difference.",
          ),
          SizedBox(height: 20),
          _buildContentBox(
            title: 'Reason to Hire Me',
            content:
                "I bring a unique blend of technical expertise, problem-solving skills, and a passion for innovation. With a strong foundation in Java, system design, and modern development practices, I create solutions that are not only functional but also optimized for performance and user engagement. My ability to adapt, learn, and stay ahead of technological trends ensures that I deliver cutting-edge solutions. If you're looking for a developer who values quality, efficiency, and creativity, I am the right choice for your team or project.",
          ),
        ],
      ),
    );
  }

  Widget _buildContentBox({required String title, required String content}) {
    return Container(
      width: 600,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.purple.shade700,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
