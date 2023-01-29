import 'package:flutter/material.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Balance",
            style: font18White,
          ),
          Text(
            "35,850,1524 STVR",
            style: font18White,
          ),
          Text(
            "= \$107,550,457 USD",
            style: font18White,
          ),
          Row(
            children: [
              Text(
                "Fringed.stvr.mainnet",
                style: font18White,
              ),
              const HorizontalGap(gap: 5),
              const Icon(
                Icons.copy,
                color: kWhiteColor,
                size: 10,
              )
            ],
          ),
        ],
      ),
  
    );
  }
}
