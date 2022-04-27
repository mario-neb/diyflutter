import 'package:diyapp/domain/discover/discover_ad.dart';
import 'package:diyapp/presentation/discover/widgets/custom_page_view.dart';
import 'package:diyapp/presentation/discover/widgets/discover_card.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DiscoverPageIndicator extends StatefulWidget {
  const DiscoverPageIndicator({
    Key? key,
    this.discoverAds,
    this.discoverCards,
    this.onPressed,
  }) : super(key: key);

  final List<DiscoverAd>? discoverAds;

  // TODO:
  //discoverCards are for hardcoded values, remove one list when correct approach will be provided.
  final List<DiscoverCard>? discoverCards;

  final VoidCallback? onPressed;

  @override
  _DiscoverPageIndicatorState createState() => _DiscoverPageIndicatorState();
}

class _DiscoverPageIndicatorState extends State<DiscoverPageIndicator> {
  final controller = PageController(viewportFraction: 0.8);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _LogoPageIndicator(
          controller: controller,
          pageCount: widget.discoverCards?.length ?? widget.discoverAds!.length,
        ),
        Stack(
          children: [
            SizedBox(
              height: 250,
              // ignore: deprecated_member_use_from_same_package
              child: CustomPageView(
                viewportDirection: false,
                controller: controller,
                children: widget.discoverCards ??
                    List.generate(
                      widget.discoverAds!.length,
                      (index) => DiscoverCard(
                        asset: widget.discoverAds![index].asset,
                        title: widget.discoverAds![index].title,
                      ),
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _LogoPageIndicator extends StatelessWidget {
  const _LogoPageIndicator({
    Key? key,
    required this.controller,
    required this.pageCount,
  }) : super(key: key);

  final PageController controller;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.size14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Assets.logoTransparent,
            width: Dimensions.size100,
            height: Dimensions.size80,
          ),
          Container(
            child: SmoothPageIndicator(
              controller: controller,
              count: pageCount,
              effect: const ExpandingDotsEffect(
                expansionFactor: 2,
                activeDotColor: ApplicationColors.cornflowerBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
