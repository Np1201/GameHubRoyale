import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;

import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widgets/custom_button.dart';

class CarromGamePage extends StatefulWidget {
  final String gameMode;
  final String? roomId;
  
  const CarromGamePage({
    Key? key,
    required this.gameMode,
    this.roomId,
  }) : super(key: key);

  @override
  State<CarromGamePage> createState() => _CarromGamePageState();
}

class _CarromGamePageState extends State<CarromGamePage>
    with TickerProviderStateMixin {
  late AnimationController _strikerController;
  late Animation<double> _strikerAnimation;
  bool _isAiming = false;
  double _aimDirection = 0;
  double _strikerPower = 0;

  @override
  void initState() {
    super.initState();
    _strikerController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _strikerAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _strikerController,
      curve: Curves.easeOut,
    ));
  }

  @override
  void dispose() {
    _strikerController.dispose();
    super.dispose();
  }

  void _startAiming() {
    setState(() {
      _isAiming = true;
    });
  }

  void _shoot() {
    if (!_isAiming) return;
    
    setState(() {
      _isAiming = false;
    });
    
    _strikerController.forward().then((_) {
      _strikerController.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8B4513), // Wood color
      appBar: AppBar(
        title: Text('Carrom - ${widget.gameMode}'),
        backgroundColor: const Color(0xFF654321),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // TODO: Show game settings
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Player Scores
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text('W', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 8),
                      Text('White: 6', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('VS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text('Round 1', style: TextStyle(color: AppTheme.textSecondary)),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text('B', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 8),
                      Text('Black: 3', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Carrom Board
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: GestureDetector(
                      onPanStart: (details) => _startAiming(),
                      onPanUpdate: (details) {
                        if (_isAiming) {
                          // Calculate aim direction based on pan
                          setState(() {
                            _aimDirection = details.localPosition.dx;
                          });
                        }
                      },
                      onPanEnd: (details) => _shoot(),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: RadialGradient(
                            colors: [
                              Color(0xFFD2B48C), // Tan
                              Color(0xFFA0522D), // Sienna
                            ],
                          ),
                        ),
                        child: CustomPaint(
                          painter: CarromBoardPainter(
                            isAiming: _isAiming,
                            aimDirection: _aimDirection,
                            strikerAnimation: _strikerAnimation,
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (!_isAiming)
                                  const Text(
                                    'Unity Carrom\n(Coming Soon)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      shadows: [
                                        Shadow(
                                          offset: Offset(1, 1),
                                          blurRadius: 3,
                                          color: Colors.black54,
                                        ),
                                      ],
                                    ),
                                  ),
                                if (_isAiming)
                                  const Text(
                                    'Aiming... Release to shoot!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow,
                                      fontFamily: 'Poppins',
                                      shadows: [
                                        Shadow(
                                          offset: Offset(1, 1),
                                          blurRadius: 3,
                                          color: Colors.black54,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Power Control
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'Striker Power',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 8),
                  Slider(
                    value: _strikerPower,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    label: '${_strikerPower.round()}%',
                    activeColor: AppTheme.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        _strikerPower = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Game Controls
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Leave Game',
                    onPressed: () {
                      _showLeaveDialog(context);
                    },
                    variant: ButtonVariant.outline,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomButton(
                    text: 'Reset Position',
                    onPressed: () {
                      // TODO: Reset striker position
                    },
                    variant: ButtonVariant.secondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  void _showLeaveDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Leave Game'),
        content: const Text('Are you sure you want to leave the game?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.pop();
            },
            child: const Text('Leave'),
          ),
        ],
      ),
    );
  }
}

class CarromBoardPainter extends CustomPainter {
  final bool isAiming;
  final double aimDirection;
  final Animation<double> strikerAnimation;
  
  CarromBoardPainter({
    required this.isAiming,
    required this.aimDirection,
    required this.strikerAnimation,
  }) : super(repaint: strikerAnimation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final center = Offset(size.width / 2, size.height / 2);
    final boardRadius = size.width * 0.4;
    
    // Draw board border
    paint.color = const Color(0xFF654321);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 8;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
    
    // Draw corner pockets
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;
    final pocketRadius = 20.0;
    
    // Four corners
    canvas.drawCircle(Offset(pocketRadius, pocketRadius), pocketRadius, paint);
    canvas.drawCircle(Offset(size.width - pocketRadius, pocketRadius), pocketRadius, paint);
    canvas.drawCircle(Offset(pocketRadius, size.height - pocketRadius), pocketRadius, paint);
    canvas.drawCircle(Offset(size.width - pocketRadius, size.height - pocketRadius), pocketRadius, paint);
    
    // Draw center circle
    paint.color = Colors.red;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;
    canvas.drawCircle(center, boardRadius * 0.15, paint);
    
    // Draw carrom men (simplified)
    paint.style = PaintingStyle.fill;
    
    // White pieces
    paint.color = Colors.white;
    for (int i = 0; i < 6; i++) {
      final angle = (i * 60) * (3.14159 / 180);
      final pos = Offset(
        center.dx + 40 * math.cos(angle),
        center.dy + 40 * math.sin(angle),
      );
      canvas.drawCircle(pos, 8, paint);
    }
    
    // Black pieces
    paint.color = Colors.black;
    for (int i = 0; i < 6; i++) {
      final angle = (i * 60 + 30) * (3.14159 / 180);
      final pos = Offset(
        center.dx + 60 * math.cos(angle),
        center.dy + 60 * math.sin(angle),
      );
      canvas.drawCircle(pos, 8, paint);
    }
    
    // Queen (red piece)
    paint.color = Colors.red;
    canvas.drawCircle(center, 8, paint);
    
    // Draw striker
    paint.color = Colors.brown;
    final strikerY = size.height - 40 + (strikerAnimation.value * -100);
    canvas.drawCircle(Offset(size.width / 2, strikerY), 12, paint);
    
    // Draw aim line if aiming
    if (isAiming) {
      paint.color = Colors.yellow;
      paint.strokeWidth = 2;
      paint.style = PaintingStyle.stroke;
      canvas.drawLine(
        Offset(size.width / 2, size.height - 40),
        Offset(aimDirection, size.height - 200),
        paint,
      );
    }
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
