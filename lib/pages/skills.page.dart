import 'package:flutter/material.dart';

class Skill {
  final String name;
  final String description;
  final IconData icon;
  bool expanded;

  Skill({required this.name, required this.description, required this.icon,this.expanded = false});
}

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  final List<Skill> _skills = [    Skill(      name: 'Laravel',      description: 'A PHP web application framework',      icon: Icons.code,    ),    Skill(      name: 'MongoDB',      description: 'A NoSQL document-oriented database',      icon: Icons.data_usage,    ),Skill(      name: 'Laravel',      description: 'A PHP web application framework',      icon: Icons.code,    ),  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scaleAnimation = Tween<double>(begin: 1, end: 0.9).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Skills'),
      ),
      body: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: _skills.map((skill) {
            return GestureDetector(
              onTapDown: (_) {
                _controller.forward();
              },
              onTapCancel: () {
                _controller.reverse();
              },
              onTap: () {
                setState(() {
                  skill.expanded = !skill.expanded;
                });
              },
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          skill.icon,
                          size: 60,
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          skill.name,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (skill.expanded)
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              skill.description,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
