import 'package:flutter/material.dart';

import './dropdown_field.dart';

class FiltersSheet extends StatefulWidget {
  @override
  _FiltersSheetState createState() => _FiltersSheetState();
}

class _FiltersSheetState extends State<FiltersSheet> {
  bool _useDefaultCategories = false;
  String _searchCategories;
  String _visibleRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Text(
              'Filters',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                letterSpacing: 1,
                color: Color(0xFFB2C2DB),
              ),
            ),
          ),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            value: _useDefaultCategories,
            onChanged: (value) {
              setState(() {
                _useDefaultCategories = value;
              });
            },
            title: Text('Use Default Categories'),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            child: Text(
              'SEARCH CATEGORIES',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                letterSpacing: 1,
                color: Color(0xFFB2C2DB),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: MultilineDropdownButtonFormField(
              iconSize: 24,
              items: [
                DropdownMenuItem(
                  child: Text('Item 1'),
                  value: 'Item 1',
                ),
                DropdownMenuItem(
                  child: Text('Item 2'),
                  value: 'Item 2',
                ),
              ],
              value: _searchCategories,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchCategories = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            child: Text(
              'VISIBLE RADIUS',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                letterSpacing: 1,
                color: Color(0xFFB2C2DB),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: MultilineDropdownButtonFormField(
              iconSize: 24,
              items: [
                DropdownMenuItem(
                  child: Text('Item 1'),
                  value: 'Item 1',
                ),
                DropdownMenuItem(
                  child: Text('Item 2'),
                  value: 'Item 2',
                ),
              ],
              value: _visibleRadius,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _visibleRadius = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 24,
          ),
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF195587),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                'Apply Filters',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
