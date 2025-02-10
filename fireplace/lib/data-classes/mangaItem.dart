class MangaItem {

  final String title;
  String? desc;
  final String id;
  final String coverId;
  final String status;

  MangaItem(this.id, this.title, this.status, this.coverId, {desc}) {
    this.desc = desc.replaceAll("\n", " ");
    this.desc = (this.desc ?? "no desc").replaceAll("\r", "");
  }

}