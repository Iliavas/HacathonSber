import 'package:flutter/material.dart';

class Canvas extends StatelessWidget {
  List<Positioned> Containing = new List<Positioned>();

  @override
  Widget build(BuildContext ctx) {
    return DragTarget<Widget>(
        onWillAccept: (data) => true,
        onAcceptWithDetails: (data) {
          RenderBox rb = ctx.findRenderObject();
          Offset pos = rb.globalToLocal(data.offset);
          print(data.data);
          Containing.add(
              Positioned(top: pos.dy, left: pos.dx, child: data.data));
        },
        builder: (BuildContext ctx, List<dynamic> data, List<dynamic> reg) =>
            InteractiveViewer(
                child: Container(
                    color: Colors.grey, child: Stack(children: Containing)
                  )
                )
              );
  }
}
