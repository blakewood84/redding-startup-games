import 'package:flutter/material.dart';

class SearchContainer extends StatefulWidget {
  final Function handleSearch;
  final clearText;
  const SearchContainer({ required this.clearText, required this.handleSearch, Key? key }) : super(key: key);

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  bool showClearIcon = false;
  String query = '';
  final TextEditingController fieldText = TextEditingController();
  

  void clearText() {
    this.widget.clearText();
    FocusManager.instance.primaryFocus!.unfocus();
    fieldText.clear();
    query = '';
    setState(() => showClearIcon = false);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .95,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: fieldText,
        textInputAction: TextInputAction.search,
        onChanged: (val) {
          query = val;
          this.widget.handleSearch(query);
          if (val.isNotEmpty) setState(() => showClearIcon = true);
        },
        // controller: fieldText,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          // TODO: Animated Icon
          suffixIcon: showClearIcon
              ? IconButton(
                  icon: Icon(Icons.clear,
                      color: Colors.white,
                  ),
                  onPressed: () {
                    clearText();
                  })
              : SizedBox.shrink(),
          prefixIcon: Icon(Icons.search,
              color: Colors.white,
          ),
          hintText: 'Search a community',
          hintStyle: TextStyle(
              color: Colors.grey[650],
              fontStyle: FontStyle.normal),
          labelStyle: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal),
          enabledBorder: OutlineInputBorder(
            borderRadius:
                const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius:
                const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0.0,
            ),
          ),
          fillColor: const Color.fromRGBO(118, 118, 128, 0.44),
          filled: true,
        ),
      ),
    );
  }
}