import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/features/shop/screens/order/widgets/orders_list.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text('My Orders', style:  Theme.of(context).textTheme.headlineSmall,),),
      body: const Padding(padding: EdgeInsets.all(TSizes.defaultSpace),

        //order
        child: TOrderListItems(),
      ),
    );
  }
}