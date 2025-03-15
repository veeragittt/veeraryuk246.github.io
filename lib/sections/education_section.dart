import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.92,
      width: double.infinity,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Text(
              "Education",
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "My education has been a journey of self-discovery and growth.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 40),
            _buildContentBox(
              title: "Hindusthan College of Arts and Science",
              subtitle: "M.Sc Information Technology (2024-2026)",
              content: "I am currently pursuing my master's degree in Information Technology, focusing on advanced computing concepts and research methodologies to expand my expertise.",
            ),
            SizedBox(height: 20),
            _buildContentBox(
              title: "Vidyasagar College of Arts and Science, Udumalpet",
              subtitle: "B.Sc Information Technology (2021-2024)\nGRADE: 72%",
              content: "During my bachelor's, I built a strong foundation in programming, databases, and software development, gaining hands-on experience through projects and internships.",
            ),
            SizedBox(height: 20),
            _buildContentBox(
              title: "Karthik Vidhya Mandir Matric Higher Secondary School, Palani",
              subtitle: "HSC-XII(std) (CS-MATHS) (2020-2021)\nGRADE: 83.5%",
              content: "I've embraced a dynamic academic journey. My studies have fostered critical thinking and a thirst for knowledge. Through my dedication and adaptability, I've honed essential skills that transcend disciplines, preparing me for future challenges and opportunities.",
            ),
            SizedBox(height: 20),
            _buildContentBox(
              title: "Karthik Vidhya Mandir Matric Higher Secondary School, Palani",
              subtitle: "SSLC-Xth(std) (2019-2020)\nGRADE: 83%",
              content: "I embarked on my educational journey with enthusiasm. This pivotal year instilled a strong foundation in essential subjects and time management. It was a crucial step toward my academic and personal development, preparing me for the road ahead.",
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildContentBox({required String title, required String subtitle, required String content}) {
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
            subtitle,
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