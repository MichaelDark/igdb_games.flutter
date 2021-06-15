DateTime? parseEpochTimestamp(int? timestamp) {
  return timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
}
