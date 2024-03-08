import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
   final String username1;
  const ProfilePage({Key? key, required this.username1}) : super(key: key);
  

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEEDDD4), // Change the background color here
        appBar: AppBar(
          title: Text('Trang cá nhân'),
          backgroundColor: Color(0xffEEDDD4),
          centerTitle: true,
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 36),
            child: _buildScrollView(context),
          ),
        ),
      ),
    );
  }

  Widget _buildScrollView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProfileSection(context),
          const SizedBox(height: 25),
          Divider(),
          _buildDailySaveSection(context),
          Divider(),
          _buildPreferencesSection(context),
          Divider(),
          _buildSecuritySettingsSection(context),
          Divider(),
          _buildHelpSupportSection(context),
        ],
      ),
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start, // Đảm bảo các widget con căn lề trái
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.person_3_outlined, size: 60),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mẹ Em bé",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text("${widget.username1}",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 16), // Khoảng cách giữa các phần
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 0), // Điều chỉnh căn lề icon nếu cần
                child: Row(
                  children: [
                    Icon(Icons.child_care, color: Colors.black, size: 50),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Thông tin em bé",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text("Mang thai được 13 tuần và 3 ngày"),
              Align(
                alignment:
                Alignment.centerRight, // Căn phải cho nút "Chỉnh sửa"
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey, // Màu nền cho nút
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Hành động khi nhấn nút
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    child: Text("Chỉnh sửa"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDailySaveSection(BuildContext context) {
    return _buildSectionWithIconAndTextBelow(
      context,
      "Lưu lại hàng ngày",
      [Icons.thumb_up, Icons.book, Icons.message],
      ["Nhật ký", "Cẩm nang", "Tin nhắn"],
    );
  }

  Widget _buildPreferencesSection(BuildContext context) {
    return _buildSectionWithClickableText(
      context,
      "Hộp lưu trữ của bố mẹ",
      ["Bài viết", "Sự phát triển của bé theo tuần"],
    );
  }

  Widget _buildSecuritySettingsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Mã chia sẻ BabySync",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              // Định nghĩa hành động của bạn ở đây
              print('Chia sẻ mã');
            },
            child: Text("Chia sẻ"),
          ),
        ],
      ),
    );
  }

  Widget _buildHelpSupportSection(BuildContext context) {
    return _buildSectionWithClickableText(
      context,
      "Hỗ trợ người dùng",
      ["Thông báo", "Hỏi đáp 1:1", "BabySync có làm tốt nhiệm vụ không?"],
    );
  }

  Widget _buildSectionWithIconAndTextBelow(BuildContext context, String title,
      List<IconData> icons, List<String> texts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 19),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            icons.length,
                (index) => Expanded(
                child: _buildIconText(icons[index], texts[index], context)),
          ),
        ),
      ],
    );
  }

  Widget _buildIconText(IconData icon, String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 26),
          const SizedBox(height: 4),
          Text(text,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _buildSectionWithClickableText(
      BuildContext context, String title, List<String> texts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          crossAxisAlignment:
          CrossAxisAlignment.start, // Đảm bảo căn lề đầu dòng đều nhau
          children:
          texts.map((text) => _buildClickableText(text, context)).toList(),
        ),
      ],
    );
  }

  Widget _buildClickableText(String text, BuildContext context) {
    bool isSpecialText = text == "BabySync có làm tốt nhiệm vụ không?";

    return InkWell(
      onTap: () {
        // Placeholder action, replace with navigation or other action
        print('Tapped on $text');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: isSpecialText ? Color(0xFF48477F) : Colors.black,
            fontWeight: isSpecialText ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  void onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
