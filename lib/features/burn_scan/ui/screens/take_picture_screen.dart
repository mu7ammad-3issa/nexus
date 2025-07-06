import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({super.key});

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen>
    with SingleTickerProviderStateMixin {
  CameraController? _controller;
  List<CameraDescription> _cameras = [];
  int _selectedCameraIndex = 0;
  bool _isCameraInitialized = false;
  AnimationController? _animationController;
  Animation<double>? _scanAnimation;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    if (_cameras.isNotEmpty) {
      _onCameraSelected(_cameras[_selectedCameraIndex]);
    }
  }

  void _onCameraSelected(CameraDescription cameraDescription) async {
    if (_controller != null) {
      await _controller!.dispose();
    }
    _controller = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      enableAudio: false,
    );

    try {
      await _controller!.initialize();
      if (!mounted) return;
      _scanAnimation =
          Tween<double>(begin: -1.0, end: 1.0).animate(_animationController!);
      setState(() {
        _isCameraInitialized = true;
      });
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  void _onSwitchCamera() {
    if (_cameras.length > 1) {
      _selectedCameraIndex = (_selectedCameraIndex + 1) % _cameras.length;
      _onCameraSelected(_cameras[_selectedCameraIndex]);
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    _animationController?.dispose();
    super.dispose();
  }

  Future<void> _onTakePicturePressed() async {
    if (_controller == null || !_controller!.value.isInitialized) return;
    try {
      final XFile imageFile = await _controller!.takePicture();
      if (mounted) {
        Navigator.pop(context, imageFile.path);
      }
    } catch (e) {
      print('Error taking picture: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isCameraInitialized) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // --- Camera Preview ---
          CameraPreview(_controller!),

          // --- Full Screen Overlay Painter (Overlay + Corners) ---
          CustomPaint(
            size: Size.infinite,
            painter: ScannerOverlayPainter(),
          ),

          // --- Animated Scan Line ---
          if (_scanAnimation != null)
            Center(
              child: SizedBox(
                width: 300.w,
                height: 450.h,
                child: AnimatedBuilder(
                  animation: _scanAnimation!,
                  builder: (context, child) {
                    return CustomPaint(
                      painter: DottedLinePainter(_scanAnimation!.value),
                    );
                  },
                ),
              ),
            ),

          // --- UI Elements (Buttons, Text) ---
          _buildHeaderAndFooter(),
        ],
      ),
    );
  }

  Widget _buildHeaderAndFooter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // --- Top Bar ---
        Container(
          padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                  if (_cameras.length > 1)
                    IconButton(
                      icon: const Icon(Icons.flip_camera_ios,
                          color: Colors.white, size: 30),
                      onPressed: _onSwitchCamera,
                    ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                'Please put your burn hand to scan it',
                style: AppStyles.aldrichRegular14Violet50
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),

        // --- Bottom Bar ---
        SizedBox(
          height: 120.h,
          child: Center(
            child: GestureDetector(
              onTap: _onTakePicturePressed,
              child: Container(
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: ColorsManager.green500, width: 4),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// --- Custom Painter for the Scanner Overlay, Cutout, and Corners ---
class ScannerOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define the scanning area rectangle
    final double scanAreaWidth = 325.w;
    final double scanAreaHeight = 525.h;
    final Rect scanRect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: scanAreaWidth,
      height: scanAreaHeight,
    );

    // --- Draw the semi-transparent overlay ---
    final overlayPaint = Paint()..color = Colors.black.withOpacity(0.5);
    canvas.saveLayer(Offset.zero & size, Paint());
    canvas.drawRect(Offset.zero & size, overlayPaint);
    // Cut out the center scanning area
    canvas.drawRect(scanRect, Paint()..blendMode = BlendMode.clear);
    canvas.restore();

    // --- Draw the corner brackets ---
    final cornerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round;
    const cornerLength = 40.0;

    // Top-left
    canvas.drawLine(scanRect.topLeft,
        scanRect.topLeft + const Offset(cornerLength, 0), cornerPaint);
    canvas.drawLine(scanRect.topLeft,
        scanRect.topLeft + const Offset(0, cornerLength), cornerPaint);

    // Top-right
    canvas.drawLine(scanRect.topRight,
        scanRect.topRight - const Offset(cornerLength, 0), cornerPaint);
    canvas.drawLine(scanRect.topRight,
        scanRect.topRight + const Offset(0, cornerLength), cornerPaint);

    // Bottom-left
    canvas.drawLine(scanRect.bottomLeft,
        scanRect.bottomLeft + const Offset(cornerLength, 0), cornerPaint);
    canvas.drawLine(scanRect.bottomLeft,
        scanRect.bottomLeft - const Offset(0, cornerLength), cornerPaint);

    // Bottom-right
    canvas.drawLine(scanRect.bottomRight,
        scanRect.bottomRight - const Offset(cornerLength, 0), cornerPaint);
    canvas.drawLine(scanRect.bottomRight,
        scanRect.bottomRight - const Offset(0, cornerLength), cornerPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// --- Custom Painter for the Animated Dotted Line ---
class DottedLinePainter extends CustomPainter {
  final double position; // -1.0 (top) to 1.0 (bottom)

  DottedLinePainter(this.position);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ColorsManager.green500.withOpacity(0.8)
      ..strokeWidth = 2.0;

    // Calculate the Y position of the line based on the animation value
    final y = size.height / 2 * (1 + position);

    const dashWidth = 5.0;
    const dashSpace = 3.0;
    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, y), Offset(startX + dashWidth, y), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant DottedLinePainter oldDelegate) {
    return oldDelegate.position != position;
  }
}
