part of 'view.dart';

Widget getBody(DashboardController controller) {
  int crossAxisCount = Get.size.width < 1366 ? 3 : 4;
  return ListView(
    padding: const EdgeInsets.symmetric(
        horizontal: MyDimens.paddingContentHorizontal,
        vertical: MyDimens.paddingContentVertical),
    children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MyStrings.myProjects.tr,
            style: MyStyles.h5.copyWith(color: MyColors.text),
          ),
          ButtonWidget(
            text: MyStrings.addProject.tr,
            onPressed: () => {},
            backgroundColor: MyColors.blue05,
            textColor: MyColors.white,
            borderRadius: MyDimens.buttonRadius2,
            borderColor: MyColors.blue06,
            icon: const Icon(
              Icons.add,
              color: MyColors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          )
        ],
      ),
      const SizedBox(
        height: 24,
      ),
      StaggeredGridView.countBuilder(
        shrinkWrap: true,
        key: ObjectKey(crossAxisCount),
        addAutomaticKeepAlives: false,
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
        physics: const ClampingScrollPhysics(),
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 24.0,
        mainAxisSpacing: 24.0,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return buildProjects(controller, index);
        },
        staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
      )
    ],
  );
}

Widget buildProjects(DashboardController controller, int index) {
  return ItemProject(
    onTap: () => {},
  );
}
