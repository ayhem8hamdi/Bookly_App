import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_bookitem_footer.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14,
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRouter.bookDetailsView);
        },
        child: const SizedBox(
          height: 150,
          child: Row(
            children: [
              CustomListViewItem(
                borderRaduis: 12,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The Jungle Book",
                      style: Styles.textSTyle22,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Rudyard Kipling",
                      style: Styles.textStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    BookRatingAndPrice(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
