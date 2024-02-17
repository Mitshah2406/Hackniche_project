import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  TextEditingController _reviewController = TextEditingController();
  double _rating = 0.0;

  void _submitReview() {
    // Collect data and send to IP
    String review = _reviewController.text;
    // Send review and rating data to your IP
    print('Review: $review, Rating: $_rating');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          "Review",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        // Centering the content
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Centering horizontally
              children: [
                SizedBox(
                  height: 45,
                ),
                TextField(
                  controller: _reviewController,
                  decoration: InputDecoration(
                    labelText: 'Write a Review',
                    labelStyle:
                        TextStyle(color: Colors.white), // Label text color
                    focusColor: Colors.white, // Input box border color
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Input box border color
                    ),
                  ),
                  maxLines: 4,
                ),
                SizedBox(height: 80),
                Text(
                  'Rating:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                RatingBar.builder(
                  initialRating: _rating,
                  minRating: 1,
                  glow: true,
                  glowColor: Colors.white,
                  direction: Axis.horizontal,
                  allowHalfRating: false, // Allowing only complete stars
                  itemCount: 5,
                  itemSize: 40,
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.star,
                      color: _rating >= index + 1
                          ? Colors.amber
                          : Colors
                              .white, // Amber color for selected stars, white for unselected stars
                      size: 40,
                    );
                  },
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating = rating;
                    });
                  },
                ),
                SizedBox(height: 140),
                ElevatedButton(
                  onPressed: _submitReview,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFF2b964f)), // Button color
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(300, 50)), // Width: 300, Height: 50
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(57)), // Border radius of 50
                      ),
                    ),
                  ),
                  child: Text(
                    'Submit Review',
                    style: TextStyle(
                      color: Colors.white, // White text color
                      fontWeight: FontWeight.bold, // Bold text
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
