import 'package:flutter/material.dart';

class TableHover extends StatefulWidget {
  const TableHover({super.key});

  @override
  State<TableHover> createState() => _TableHoverState();
}

class _TableHoverState extends State<TableHover> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 62, 63, 81),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 10),
          itemBuilder: (context, index) {
            return const HoverBox();
          }),
    );
  }
}

class HoverBox extends StatefulWidget {
  const HoverBox({super.key});

  @override
  State<HoverBox> createState() => _HoverBoxState();
}

class _HoverBoxState extends State<HoverBox> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHover = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: _isHover
              ? const Color.fromARGB(255, 111, 111, 125)
              : const Color.fromARGB(255, 31, 31, 38),
          boxShadow: _isHover
              ? [
                  const BoxShadow(
                      color: Colors.grey, blurRadius: 10, spreadRadius: 3),
                ]
              : [],
        ),
        margin: const EdgeInsets.all(2),
      ),
    );
  }
}
