import 'package:flutter/material.dart';

import 'package:news_hub/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.model,
  });
  final ArticleModel model;
  _launchURL() async {
    if (await canLaunchUrl(Uri.parse(model.url))) {
      await launchUrl(Uri.parse(model.url));
    } else {
      throw 'Could not launch $model.url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchURL,
      child: Padding(
        padding: const EdgeInsets.only( top: 30),
        child: Center(
          child: Container(
            height: 320,
            width: 337,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: const Color(0xff61EBCA), width: 2)),
            child: Column(
              children: [
                Container(
                  height: 216,
                  width: 335,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                      image: DecorationImage(
                          image: model.urlToImage != "removed"
                              ? NetworkImage(model.urlToImage!)
                              : const AssetImage("assets/removed.png"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    model.title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    model.description ?? "Click here for more ...",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        const TextStyle(fontSize: 10, color: Color(0xff404040)),
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
