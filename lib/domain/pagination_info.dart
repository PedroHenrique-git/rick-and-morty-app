class PaginationInfo {
  int? count;
  int? pages;
  String? next;
  String? prev;

  PaginationInfo(this.count, this.pages, this.next, this.prev);

  factory PaginationInfo.fromJson(Map<String, dynamic> json) {
    return PaginationInfo(
        json['count'], json['pages'], json['next'], json['prev']);
  }

  Map<String, dynamic> toJson() {
    return {'count': count, 'pages': pages, 'next': next, 'prev': prev};
  }
}
