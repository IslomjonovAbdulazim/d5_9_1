import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String desc =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  bool isFull = false;
  String size = "M";
  List options = ["S", "M", "L"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Detail",
          style: GoogleFonts.sora(
            fontSize: 20,
          ),
        ),
        actions: [
          CupertinoButton(
            onPressed: () {},
            child: Icon(
              CupertinoIcons.heart,
              size: 28,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [

              // Homework .....

              Text(
                "Description",
                style: GoogleFonts.sora(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                desc,
                style: GoogleFonts.sora(
                  color: Color(0xffA2A2A2),
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
                maxLines: isFull ? 20 : 3,
                overflow: TextOverflow.ellipsis,
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  isFull = !isFull;
                  setState(() {});
                },
                child: Text(
                  isFull ? "Show Less" : "Show More",
                  style: GoogleFonts.sora(
                    color: Color(0xffC67C4E),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Size",
                style: GoogleFonts.sora(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: options
                    .map(
                      (value) => Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(
                                size == value ? 0xffC67C4E : 0xffA2A2A2,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: CupertinoButton(
                            color: size == value
                                ? Color(0xffC67C4E).withOpacity(.1)
                                : Colors.white,
                            onPressed: () {
                              size = value;
                              setState(() {});
                            },
                            child: Text(
                              value,
                              style: GoogleFonts.sora(
                                color: size == value
                                    ? Color(0xffC67C4E)
                                    : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
