import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_app/balance_workout.dart';
import 'package:project_app/weight_loss.dart';
import 'package:project_app/weightgain.dart';
import 'package:provider/provider.dart';
import 'package:project_app/providers/theme_provider.dart';
import 'login.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.white,
        title: Text(
          "Fitness App",
          style: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: isDarkMode ? Colors.white : Colors.black87,
            ),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
          IconButton(
            onPressed: () {
              GetStorage box = GetStorage();
              box.erase();
              Get.offAll(Login());
            },
            icon: Icon(
              Icons.logout,
              color: isDarkMode ? Colors.white70 : Colors.black54,
            ),
          ),
        ],
      ),
      body: Container(
        color: isDarkMode ? Colors.grey[850] : Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Weight gain
              _buildWorkoutCard(
                context: context,
                title: "Weight Gain",
                subtitle: "Build Muscle Mass",
                imagePath: "assets/exercise/exersice_1.gif",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Weightgain()),
                ),
                isDarkMode: isDarkMode,
              ),
              const SizedBox(height: 16),

              // Weight loss
              _buildWorkoutCard(
                context: context,
                title: "Weight Loss",
                subtitle: "Burn Fat & Calories",
                imagePath: "assets/exercise/exersice_2.gif",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeightLoss()),
                ),
                isDarkMode: isDarkMode,
              ),
              const SizedBox(height: 16),

              // Balanced workout
              _buildWorkoutCard(
                context: context,
                title: "Balanced Workout",
                subtitle: "Maintain Fitness",
                imagePath: "assets/exercise/exersice_2.gif",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BalanceWorkout()),
                ),
                isDarkMode: isDarkMode,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard({
    required BuildContext context,
    required String title,
    required String subtitle,
    required String imagePath,
    required VoidCallback onTap,
    required bool isDarkMode,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.grey[800] : Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: isDarkMode
                ? Colors.black.withOpacity(0.3)
                : Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? Colors.white : Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 16,
                          color: isDarkMode ? Colors.white70 : Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    imagePath,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: isDarkMode ? Colors.white70 : Colors.black54,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isDarkMode ? Colors.deepPurple[400] : Colors.deepPurple,
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              "GET STARTED",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
