import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widgets/custom_button.dart';

class LudoGamePage extends StatefulWidget {
  final String gameMode;
  final String? roomId;
  
  const LudoGamePage({
    Key? key,
    required this.gameMode,
    this.roomId,
  }) : super(key: key);

  @override
  State<LudoGamePage> createState() => _LudoGamePageState();
}

class _LudoGamePageState extends State<LudoGamePage> {
  int _diceValue = 1;
  String _currentPlayer = 'Red';
  bool _canRollDice = true;

  void _rollDice() {
    if (!_canRollDice) return;
    
    setState(() {
      _diceValue = (DateTime.now().millisecondsSinceEpoch % 6) + 1;
      _canRollDice = false;
    });
    
    // Simulate turn logic
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _canRollDice = true;
          // Cycle through players
          switch (_currentPlayer) {
            case 'Red':
              _currentPlayer = 'Blue';
              break;
            case 'Blue':
              _currentPlayer = 'Green';
              break;
            case 'Green':
              _currentPlayer = 'Yellow';
              break;
            case 'Yellow':
              _currentPlayer = 'Red';
              break;
          }
        });
      }
    });
  }

  Color _getPlayerColor(String player) {
    switch (player) {
      case 'Red':
        return AppTheme.ludoRed;
      case 'Blue':
        return AppTheme.ludoBlue;
      case 'Green':
        return AppTheme.ludoGreen;
      case 'Yellow':
        return AppTheme.ludoYellow;
      default:
        return AppTheme.primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: Text('Ludo - ${widget.gameMode}'),
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
            // Current Player Indicator
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: _getPlayerColor(_currentPlayer),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '$_currentPlayer Player\'s Turn',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Ludo Board
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      color: Colors.white,
                      child: CustomPaint(
                        painter: LudoBoardPainter(),
                        child: const Center(
                          child: Text(
                            'Ludo Board\n(Coming Soon)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.textPrimary,
                              fontFamily: 'Poppins',
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
            
            // Dice Section
            Container(
              padding: const EdgeInsets.all(20),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Dice Display
                  GestureDetector(
                    onTap: _rollDice,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: _canRollDice ? _getPlayerColor(_currentPlayer) : Colors.grey,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: (_canRollDice ? _getPlayerColor(_currentPlayer) : Colors.grey).withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          _diceValue.toString(),
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  // Roll Button
                  CustomButton(
                    text: _canRollDice ? 'Roll Dice' : 'Wait...',
                    onPressed: _canRollDice ? _rollDice : null,
                    isFullWidth: false,
                    width: 120,
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
                    text: 'Settings',
                    onPressed: () {
                      // TODO: Show game settings
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

class LudoBoardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill;
    
    final boardSize = size.width;
    final sectionSize = boardSize / 3;
    
    // Draw the four colored corners
    // Red corner (top-left)
    paint.color = AppTheme.ludoRed.withOpacity(0.3);
    canvas.drawRect(
      Rect.fromLTWH(0, 0, sectionSize, sectionSize),
      paint,
    );
    
    // Blue corner (top-right)
    paint.color = AppTheme.ludoBlue.withOpacity(0.3);
    canvas.drawRect(
      Rect.fromLTWH(sectionSize * 2, 0, sectionSize, sectionSize),
      paint,
    );
    
    // Green corner (bottom-left)
    paint.color = AppTheme.ludoGreen.withOpacity(0.3);
    canvas.drawRect(
      Rect.fromLTWH(0, sectionSize * 2, sectionSize, sectionSize),
      paint,
    );
    
    // Yellow corner (bottom-right)
    paint.color = AppTheme.ludoYellow.withOpacity(0.3);
    canvas.drawRect(
      Rect.fromLTWH(sectionSize * 2, sectionSize * 2, sectionSize, sectionSize),
      paint,
    );
    
    // Draw grid lines
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    
    for (int i = 0; i <= 3; i++) {
      // Vertical lines
      canvas.drawLine(
        Offset(i * sectionSize, 0),
        Offset(i * sectionSize, boardSize),
        paint,
      );
      
      // Horizontal lines
      canvas.drawLine(
        Offset(0, i * sectionSize),
        Offset(boardSize, i * sectionSize),
        paint,
      );
    }
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
