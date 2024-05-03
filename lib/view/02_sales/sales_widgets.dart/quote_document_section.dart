import 'package:flutter/material.dart';

import '../../../widgets/file_with_icon_and_name_widget.dart';
import '../../../model/02_sales/sales_model/attached_file.dart';

class QuoteDocumentSection extends StatelessWidget {
  const QuoteDocumentSection({
    super.key,
    required this.files,
    required this.quoteDocument,
  });

  final String? quoteDocument;
  final List<AttachedFile> files;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          if (quoteDocument != null) ...{
            FileWithIconAndNameWidget(
              fileName: "Quote Document",
              onTap: () {},
            )
          },
          for (int i = 0; i < files.length; i++) ...{
            FileWithIconAndNameWidget(
              hasIcon: true,
              fileName: files[i].fileName ?? files[i].name ?? "",
              onTap: () {},
            )
          }
        ],
      ),
    );
  }
}
